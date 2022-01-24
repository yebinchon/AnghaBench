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
 int FDT_ERR_NOTFOUND ; 
 int FUNC0 (void const*,int,char*) ; 

int FUNC1(const void *fdt, int nodeoffset)
{
	int val;

	val = FUNC0(fdt, nodeoffset, "#size-cells");
	if (val == -FDT_ERR_NOTFOUND)
		return 1;
	return val;
}