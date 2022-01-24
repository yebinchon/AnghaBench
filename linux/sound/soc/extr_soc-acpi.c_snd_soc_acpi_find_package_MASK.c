#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ count; } ;
union acpi_object {TYPE_2__ package; } ;
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_acpi_package_context {int data_valid; scalar_t__ length; int /*<<< orphan*/  state; int /*<<< orphan*/  format; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ functional; scalar_t__ present; } ;
struct acpi_device {TYPE_1__ status; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*) ; 

__attribute__((used)) static acpi_status FUNC5(acpi_handle handle, u32 level,
					     void *context, void **ret)
{
	struct acpi_device *adev;
	acpi_status status = AE_OK;
	struct snd_soc_acpi_package_context *pkg_ctx = context;

	pkg_ctx->data_valid = false;

	if (FUNC1(handle, &adev))
		return AE_OK;

	if (adev->status.present && adev->status.functional) {
		struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, NULL};
		union acpi_object  *myobj = NULL;

		status = FUNC2(handle, pkg_ctx->name,
						NULL, &buffer,
						ACPI_TYPE_PACKAGE);
		if (FUNC0(status))
			return AE_OK;

		myobj = buffer.pointer;
		if (!myobj || myobj->package.count != pkg_ctx->length) {
			FUNC4(buffer.pointer);
			return AE_OK;
		}

		status = FUNC3(myobj,
					pkg_ctx->format, pkg_ctx->state);
		if (FUNC0(status)) {
			FUNC4(buffer.pointer);
			return AE_OK;
		}

		FUNC4(buffer.pointer);
		pkg_ctx->data_valid = true;
		return AE_CTRL_TERMINATE;
	}

	return AE_OK;
}