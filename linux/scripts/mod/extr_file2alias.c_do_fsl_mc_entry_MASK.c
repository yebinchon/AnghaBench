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
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  fsl_mc_device_id ; 
 char** obj_type ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,char*) ; 
 int vendor ; 

__attribute__((used)) static int FUNC3(const char *filename, void *symval,
			   char *alias)
{
	FUNC0(symval, fsl_mc_device_id, vendor);
	FUNC1(symval, fsl_mc_device_id, obj_type);

	FUNC2(alias, "fsl-mc:v%08Xd%s", vendor, *obj_type);
	return 1;
}