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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PERF_HPP__MAX_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hpp_sort_dimensions ; 
 int /*<<< orphan*/  perf_hpp_list ; 

int FUNC2(unsigned col)
{
	FUNC0(col >= PERF_HPP__MAX_INDEX);
	return FUNC1(&perf_hpp_list, &hpp_sort_dimensions[col]);
}