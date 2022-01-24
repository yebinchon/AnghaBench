#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char**) ; 
 char* MEI_CL_MODULE_PREFIX ; 
 scalar_t__ MEI_CL_VERSION_ANY ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  mei_cl_device_id ; 
 char** name ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 char** uuid ; 
 scalar_t__ version ; 

__attribute__((used)) static int FUNC7(const char *filename, void *symval,
			char *alias)
{
	FUNC2(symval, mei_cl_device_id, name);
	FUNC2(symval, mei_cl_device_id, uuid);
	FUNC1(symval, mei_cl_device_id, version);

	FUNC4(alias, MEI_CL_MODULE_PREFIX);
	FUNC4(alias + FUNC6(alias), "%s:",  (*name)[0]  ? *name : "*");
	FUNC3(alias, *uuid);
	FUNC0(alias, ":", version != MEI_CL_VERSION_ANY, version);

	FUNC5(alias, ":*");

	return 1;
}