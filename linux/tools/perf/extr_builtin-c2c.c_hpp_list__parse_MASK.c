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
struct perf_hpp_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c2c_hists__init_output ; 
 int /*<<< orphan*/  c2c_hists__init_sort ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* hists ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_hpp_list*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(struct perf_hpp_list *hpp_list,
			   const char *output_,
			   const char *sort_)
{
	char *output = output_ ? FUNC4(output_) : NULL;
	char *sort   = sort_   ? FUNC4(sort_) : NULL;
	int ret;

	FUNC0(output, c2c_hists__init_output);
	FUNC0(sort,   c2c_hists__init_sort);

	/* copy sort keys to output fields */
	FUNC3(hpp_list);

	/*
	 * We dont need other sorting keys other than those
	 * we already specified. It also really slows down
	 * the processing a lot with big number of output
	 * fields, so switching this off for c2c.
	 */

#if 0
	/* and then copy output fields to sort keys */
	perf_hpp__append_sort_keys(&hists->list);
#endif

	FUNC1(output);
	FUNC1(sort);
	return ret;
}