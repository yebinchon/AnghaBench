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
struct perf_hpp_list {int dummy; } ;
struct perf_hpp_fmt {int dummy; } ;
struct hpp_dimension {int taken; } ;

/* Variables and functions */
 struct perf_hpp_fmt* FUNC0 (struct hpp_dimension*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_hpp_list*,struct perf_hpp_fmt*) ; 

__attribute__((used)) static int FUNC2(struct hpp_dimension *hd,
				struct perf_hpp_list *list,
				int level)
{
	struct perf_hpp_fmt *fmt;

	if (hd->taken)
		return 0;

	fmt = FUNC0(hd, level);
	if (!fmt)
		return -1;

	hd->taken = 1;
	FUNC1(list, fmt);
	return 0;
}