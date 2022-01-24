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
struct logic_pio_hwaddr {scalar_t__ io_start; scalar_t__ hw_start; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 struct logic_pio_hwaddr* FUNC0 (unsigned long) ; 

resource_size_t FUNC1(unsigned long pio)
{
	struct logic_pio_hwaddr *range;

	range = FUNC0(pio);
	if (range)
		return range->hw_start + pio - range->io_start;

	return (resource_size_t)~0;
}