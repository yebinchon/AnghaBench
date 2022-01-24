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
 long FUNC0 () ; 
 long FUNC1 () ; 

long FUNC2(void)
{
	/* not actually dirty inodes, but a wild approximation */
	long nr_dirty = FUNC0() - FUNC1();
	return nr_dirty > 0 ? nr_dirty : 0;
}