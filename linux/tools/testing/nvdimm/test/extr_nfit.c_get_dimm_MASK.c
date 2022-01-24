#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfit_mem {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_handle; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int ENXIO ; 
 TYPE_1__* FUNC1 (struct nfit_mem*) ; 
 scalar_t__* handle ; 

__attribute__((used)) static int FUNC2(struct nfit_mem *nfit_mem, unsigned int func)
{
	int i;

	/* lookup per-dimm data */
	for (i = 0; i < FUNC0(handle); i++)
		if (FUNC1(nfit_mem)->device_handle == handle[i])
			break;
	if (i >= FUNC0(handle))
		return -ENXIO;
	return i;
}