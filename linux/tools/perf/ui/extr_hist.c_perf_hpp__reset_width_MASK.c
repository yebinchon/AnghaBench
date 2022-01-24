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
struct perf_hpp_fmt {int idx; int len; } ;
struct hists {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PERF_HPP__MAX_INDEX ; 
#define  PERF_HPP__OVERHEAD 135 
#define  PERF_HPP__OVERHEAD_ACC 134 
#define  PERF_HPP__OVERHEAD_GUEST_SYS 133 
#define  PERF_HPP__OVERHEAD_GUEST_US 132 
#define  PERF_HPP__OVERHEAD_SYS 131 
#define  PERF_HPP__OVERHEAD_US 130 
#define  PERF_HPP__PERIOD 129 
#define  PERF_HPP__SAMPLES 128 
 scalar_t__ FUNC1 (struct perf_hpp_fmt*) ; 
 scalar_t__ FUNC2 (struct perf_hpp_fmt*) ; 
 void FUNC3 (struct perf_hpp_fmt*,struct hists*) ; 

void FUNC4(struct perf_hpp_fmt *fmt, struct hists *hists)
{
	if (FUNC2(fmt))
		return FUNC3(fmt, hists);

	if (FUNC1(fmt))
		return;

	FUNC0(fmt->idx >= PERF_HPP__MAX_INDEX);

	switch (fmt->idx) {
	case PERF_HPP__OVERHEAD:
	case PERF_HPP__OVERHEAD_SYS:
	case PERF_HPP__OVERHEAD_US:
	case PERF_HPP__OVERHEAD_ACC:
		fmt->len = 8;
		break;

	case PERF_HPP__OVERHEAD_GUEST_SYS:
	case PERF_HPP__OVERHEAD_GUEST_US:
		fmt->len = 9;
		break;

	case PERF_HPP__SAMPLES:
	case PERF_HPP__PERIOD:
		fmt->len = 12;
		break;

	default:
		break;
	}
}