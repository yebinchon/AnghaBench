#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * next; } ;
struct perf_hpp_fmt {char* name; TYPE_2__ sort_list; TYPE_2__ list; } ;
struct TYPE_3__ {scalar_t__ show_total_period; scalar_t__ show_nr_samples; scalar_t__ show_cpu_utilization; scalar_t__ cumulate_callchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int PERF_HPP__MAX_INDEX ; 
 size_t PERF_HPP__OVERHEAD ; 
 size_t PERF_HPP__OVERHEAD_ACC ; 
 size_t PERF_HPP__OVERHEAD_GUEST_SYS ; 
 size_t PERF_HPP__OVERHEAD_GUEST_US ; 
 size_t PERF_HPP__OVERHEAD_SYS ; 
 size_t PERF_HPP__OVERHEAD_US ; 
 size_t PERF_HPP__PERIOD ; 
 size_t PERF_HPP__SAMPLES ; 
 int /*<<< orphan*/  field_order ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ perf_guest ; 
 struct perf_hpp_fmt* perf_hpp__format ; 
 TYPE_1__ symbol_conf ; 

void FUNC3(void)
{
	int i;

	for (i = 0; i < PERF_HPP__MAX_INDEX; i++) {
		struct perf_hpp_fmt *fmt = &perf_hpp__format[i];

		FUNC0(&fmt->list);

		/* sort_list may be linked by setup_sorting() */
		if (fmt->sort_list.next == NULL)
			FUNC0(&fmt->sort_list);
	}

	/*
	 * If user specified field order, no need to setup default fields.
	 */
	if (FUNC2(field_order))
		return;

	if (symbol_conf.cumulate_callchain) {
		FUNC1(PERF_HPP__OVERHEAD_ACC);
		perf_hpp__format[PERF_HPP__OVERHEAD].name = "Self";
	}

	FUNC1(PERF_HPP__OVERHEAD);

	if (symbol_conf.show_cpu_utilization) {
		FUNC1(PERF_HPP__OVERHEAD_SYS);
		FUNC1(PERF_HPP__OVERHEAD_US);

		if (perf_guest) {
			FUNC1(PERF_HPP__OVERHEAD_GUEST_SYS);
			FUNC1(PERF_HPP__OVERHEAD_GUEST_US);
		}
	}

	if (symbol_conf.show_nr_samples)
		FUNC1(PERF_HPP__SAMPLES);

	if (symbol_conf.show_total_period)
		FUNC1(PERF_HPP__PERIOD);
}