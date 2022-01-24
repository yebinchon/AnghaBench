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
struct perf_sample {int /*<<< orphan*/  user_regs; int /*<<< orphan*/  intr_regs; } ;
struct perf_event_attr {int /*<<< orphan*/  sample_regs_user; int /*<<< orphan*/  sample_regs_intr; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;
typedef  int /*<<< orphan*/  bf ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(PyObject *dict,
			     struct perf_sample *sample,
			     struct evsel *evsel)
{
	struct perf_event_attr *attr = &evsel->core.attr;
	char bf[512];

	FUNC2(&sample->intr_regs, attr->sample_regs_intr, bf, sizeof(bf));

	FUNC1(dict, "iregs",
			FUNC0(bf));

	FUNC2(&sample->user_regs, attr->sample_regs_user, bf, sizeof(bf));

	FUNC1(dict, "uregs",
			FUNC0(bf));
}