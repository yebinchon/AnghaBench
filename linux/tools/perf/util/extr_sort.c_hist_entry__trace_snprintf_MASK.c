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
struct hist_entry {int /*<<< orphan*/ * trace_output; int /*<<< orphan*/  hists; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;

/* Variables and functions */
 scalar_t__ PERF_TYPE_TRACEPOINT ; 
 int /*<<< orphan*/ * FUNC0 (struct hist_entry*) ; 
 struct evsel* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,size_t,char*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,size_t,char*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC4(struct hist_entry *he, char *bf,
				    size_t size, unsigned int width)
{
	struct evsel *evsel;

	evsel = FUNC1(he->hists);
	if (evsel->core.attr.type != PERF_TYPE_TRACEPOINT)
		return FUNC3(bf, size, "%-.*s", width, "N/A");

	if (he->trace_output == NULL)
		he->trace_output = FUNC0(he);
	return FUNC2(bf, size, "%-.*s", width, he->trace_output);
}