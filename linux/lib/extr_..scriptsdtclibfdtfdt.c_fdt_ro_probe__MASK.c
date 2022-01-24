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
 int FDT_ERR_BADMAGIC ; 
 int FDT_ERR_BADSTATE ; 
 int FDT_ERR_BADVERSION ; 
 scalar_t__ FDT_FIRST_SUPPORTED_VERSION ; 
 scalar_t__ FDT_LAST_SUPPORTED_VERSION ; 
 scalar_t__ FDT_MAGIC ; 
 scalar_t__ FDT_SW_MAGIC ; 
 scalar_t__ FUNC0 (void const*) ; 
 scalar_t__ FUNC1 (void const*) ; 
 scalar_t__ FUNC2 (void const*) ; 
 scalar_t__ FUNC3 (void const*) ; 

int FUNC4(const void *fdt)
{
	if (FUNC1(fdt) == FDT_MAGIC) {
		/* Complete tree */
		if (FUNC3(fdt) < FDT_FIRST_SUPPORTED_VERSION)
			return -FDT_ERR_BADVERSION;
		if (FUNC0(fdt) > FDT_LAST_SUPPORTED_VERSION)
			return -FDT_ERR_BADVERSION;
	} else if (FUNC1(fdt) == FDT_SW_MAGIC) {
		/* Unfinished sequential-write blob */
		if (FUNC2(fdt) == 0)
			return -FDT_ERR_BADSTATE;
	} else {
		return -FDT_ERR_BADMAGIC;
	}

	return 0;
}