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
struct perf_hpp_fmt {int /*<<< orphan*/  (* free ) (struct perf_hpp_fmt*) ;int /*<<< orphan*/  sort_list; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_hpp_fmt*) ; 

__attribute__((used)) static void FUNC3(struct perf_hpp_fmt *fmt)
{
	/*
	 * At this point fmt should be completely
	 * unhooked, if not it's a bug.
	 */
	FUNC0(!FUNC1(&fmt->list));
	FUNC0(!FUNC1(&fmt->sort_list));

	if (fmt->free)
		fmt->free(fmt);
}