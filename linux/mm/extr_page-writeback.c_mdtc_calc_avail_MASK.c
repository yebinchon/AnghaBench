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
struct dirty_throttle_control {unsigned long dirty; unsigned long avail; } ;

/* Variables and functions */
 struct dirty_throttle_control* FUNC0 (struct dirty_throttle_control*) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct dirty_throttle_control *mdtc,
			    unsigned long filepages, unsigned long headroom)
{
	struct dirty_throttle_control *gdtc = FUNC0(mdtc);
	unsigned long clean = filepages - FUNC1(filepages, mdtc->dirty);
	unsigned long global_clean = gdtc->avail - FUNC1(gdtc->avail, gdtc->dirty);
	unsigned long other_clean = global_clean - FUNC1(global_clean, clean);

	mdtc->avail = filepages + FUNC1(headroom, other_clean);
}