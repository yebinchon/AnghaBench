
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct nhlt_resource_desc {scalar_t__ length; int min_addr; } ;
struct TYPE_4__ {int signature; } ;
struct nhlt_acpi_table {TYPE_2__ header; } ;
struct device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_FREE (union acpi_object*) ;
 int ACPI_HANDLE (struct device*) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int MEMREMAP_WB ;
 int NHLT_ACPI_HEADER_SIG ;
 union acpi_object* acpi_evaluate_dsm (int ,int *,int,int,int *) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ memremap (int ,scalar_t__,int ) ;
 int memunmap (struct nhlt_acpi_table*) ;
 int osc_guid ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

struct nhlt_acpi_table *intel_nhlt_init(struct device *dev)
{
 acpi_handle handle;
 union acpi_object *obj;
 struct nhlt_resource_desc *nhlt_ptr;
 struct nhlt_acpi_table *nhlt_table = ((void*)0);

 handle = ACPI_HANDLE(dev);
 if (!handle) {
  dev_err(dev, "Didn't find ACPI_HANDLE\n");
  return ((void*)0);
 }

 obj = acpi_evaluate_dsm(handle, &osc_guid, 1, 1, ((void*)0));

 if (!obj)
  return ((void*)0);

 if (obj->type != ACPI_TYPE_BUFFER) {
  dev_dbg(dev, "No NHLT table found\n");
  ACPI_FREE(obj);
  return ((void*)0);
 }

 nhlt_ptr = (struct nhlt_resource_desc *)obj->buffer.pointer;
 if (nhlt_ptr->length)
  nhlt_table = (struct nhlt_acpi_table *)
   memremap(nhlt_ptr->min_addr, nhlt_ptr->length,
     MEMREMAP_WB);
 ACPI_FREE(obj);
 if (nhlt_table &&
     (strncmp(nhlt_table->header.signature,
       NHLT_ACPI_HEADER_SIG,
       strlen(NHLT_ACPI_HEADER_SIG)) != 0)) {
  memunmap(nhlt_table);
  dev_err(dev, "NHLT ACPI header signature incorrect\n");
  return ((void*)0);
 }
 return nhlt_table;
}
