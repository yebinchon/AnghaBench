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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  kernel_module_request ; 

int FUNC2(char *kmod_name)
{
	int ret;

	ret = FUNC0(kernel_module_request, 0, kmod_name);
	if (ret)
		return ret;
	return FUNC1(kmod_name);
}