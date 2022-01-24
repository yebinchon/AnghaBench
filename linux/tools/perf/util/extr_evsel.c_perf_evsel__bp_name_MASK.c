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
struct perf_event_attr {int /*<<< orphan*/  bp_type; int /*<<< orphan*/  bp_addr; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct evsel*,char*,size_t) ; 

__attribute__((used)) static int FUNC2(struct evsel *evsel, char *bf, size_t size)
{
	struct perf_event_attr *attr = &evsel->core.attr;
	int r = FUNC0(bf, size, attr->bp_addr, attr->bp_type);
	return r + FUNC1(evsel, bf + r, size - r);
}