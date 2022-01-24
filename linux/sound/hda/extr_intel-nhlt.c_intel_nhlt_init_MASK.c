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
struct TYPE_3__ {scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct nhlt_resource_desc {scalar_t__ length; int /*<<< orphan*/  min_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  signature; } ;
struct nhlt_acpi_table {TYPE_2__ header; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  MEMREMAP_WB ; 
 int /*<<< orphan*/  NHLT_ACPI_HEADER_SIG ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nhlt_acpi_table*) ; 
 int /*<<< orphan*/  osc_guid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct nhlt_acpi_table *FUNC9(struct device *dev)
{
	acpi_handle handle;
	union acpi_object *obj;
	struct nhlt_resource_desc *nhlt_ptr;
	struct nhlt_acpi_table *nhlt_table = NULL;

	handle = FUNC1(dev);
	if (!handle) {
		FUNC4(dev, "Didn't find ACPI_HANDLE\n");
		return NULL;
	}

	obj = FUNC2(handle, &osc_guid, 1, 1, NULL);

	if (!obj)
		return NULL;

	if (obj->type != ACPI_TYPE_BUFFER) {
		FUNC3(dev, "No NHLT table found\n");
		FUNC0(obj);
		return NULL;
	}

	nhlt_ptr = (struct nhlt_resource_desc  *)obj->buffer.pointer;
	if (nhlt_ptr->length)
		nhlt_table = (struct nhlt_acpi_table *)
			FUNC5(nhlt_ptr->min_addr, nhlt_ptr->length,
				 MEMREMAP_WB);
	FUNC0(obj);
	if (nhlt_table &&
	    (FUNC8(nhlt_table->header.signature,
		     NHLT_ACPI_HEADER_SIG,
		     FUNC7(NHLT_ACPI_HEADER_SIG)) != 0)) {
		FUNC6(nhlt_table);
		FUNC4(dev, "NHLT ACPI header signature incorrect\n");
		return NULL;
	}
	return nhlt_table;
}