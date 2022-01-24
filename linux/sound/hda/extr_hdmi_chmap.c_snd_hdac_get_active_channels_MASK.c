#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int channels; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* channel_allocations ; 
 int FUNC1 (int) ; 

int FUNC2(int ca)
{
	int ordered_ca = FUNC1(ca);

	/* Add sanity check to pass klockwork check.
	 * This should never happen.
	 */
	if (ordered_ca >= FUNC0(channel_allocations))
		ordered_ca = 0;

	return channel_allocations[ordered_ca].channels;
}