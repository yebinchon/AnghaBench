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
typedef  union perf_event {int dummy; } perf_event ;
typedef  int /*<<< orphan*/  u64 ;
struct perf_sample {int dummy; } ;
struct intel_pt {int /*<<< orphan*/  session; } ;

/* Variables and functions */
 int FUNC0 (struct intel_pt*,union perf_event*,struct perf_sample*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,union perf_event*,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct intel_pt *pt,
					  union perf_event *event,
					  struct perf_sample *sample, u64 type)
{
	int ret;

	ret = FUNC0(pt, event, sample, type);
	if (ret)
		return ret;

	ret = FUNC1(pt->session, event, sample);
	if (ret)
		FUNC2("Intel PT: failed to deliver event, error %d\n", ret);

	return ret;
}