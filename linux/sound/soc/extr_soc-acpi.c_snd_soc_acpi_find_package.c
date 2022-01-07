
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; } ;
union acpi_object {TYPE_2__ package; } ;
typedef int u32 ;
struct snd_soc_acpi_package_context {int data_valid; scalar_t__ length; int state; int format; int name; } ;
struct TYPE_3__ {scalar_t__ functional; scalar_t__ present; } ;
struct acpi_device {TYPE_1__ status; } ;
struct acpi_buffer {union acpi_object* pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_PACKAGE ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_evaluate_object_typed (int ,int ,int *,struct acpi_buffer*,int ) ;
 int acpi_extract_package (union acpi_object*,int ,int ) ;
 int kfree (union acpi_object*) ;

__attribute__((used)) static acpi_status snd_soc_acpi_find_package(acpi_handle handle, u32 level,
          void *context, void **ret)
{
 struct acpi_device *adev;
 acpi_status status = AE_OK;
 struct snd_soc_acpi_package_context *pkg_ctx = context;

 pkg_ctx->data_valid = 0;

 if (acpi_bus_get_device(handle, &adev))
  return AE_OK;

 if (adev->status.present && adev->status.functional) {
  struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
  union acpi_object *myobj = ((void*)0);

  status = acpi_evaluate_object_typed(handle, pkg_ctx->name,
      ((void*)0), &buffer,
      ACPI_TYPE_PACKAGE);
  if (ACPI_FAILURE(status))
   return AE_OK;

  myobj = buffer.pointer;
  if (!myobj || myobj->package.count != pkg_ctx->length) {
   kfree(buffer.pointer);
   return AE_OK;
  }

  status = acpi_extract_package(myobj,
     pkg_ctx->format, pkg_ctx->state);
  if (ACPI_FAILURE(status)) {
   kfree(buffer.pointer);
   return AE_OK;
  }

  kfree(buffer.pointer);
  pkg_ctx->data_valid = 1;
  return AE_CTRL_TERMINATE;
 }

 return AE_OK;
}
