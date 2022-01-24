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
struct perf_top {scalar_t__ drop; scalar_t__ lost; TYPE_1__* evlist; int /*<<< orphan*/ * sym_evsel; } ;
struct TYPE_2__ {int /*<<< orphan*/ * selected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_top*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	struct perf_top *t = arg;

	if (t->evlist->selected != NULL)
		t->sym_evsel = t->evlist->selected;

	FUNC0(t);

	if (t->lost || t->drop)
		FUNC1("Too slow to read ring buffer (change period (-c/-F) or limit CPUs (-C)\n");
}