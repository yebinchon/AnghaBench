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
typedef  int /*<<< orphan*/  u64 ;
struct thread {int filter; int filter_entry_depth; } ;
struct perf_sample {int /*<<< orphan*/  cpu; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;
struct TYPE_2__ {char* graph_function; } ;

/* Variables and functions */
 char* FUNC0 (struct perf_sample*,struct evsel*,struct thread*,struct addr_location*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (char const*,char*) ; 
 unsigned int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,unsigned int) ; 
 TYPE_1__ symbol_conf ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct perf_sample *sample,
		       struct evsel *evsel,
		       struct thread *thread,
		       struct addr_location *al)
{
	int depth = FUNC4(thread, sample->cpu);

	if (!symbol_conf.graph_function)
		return true;

	if (thread->filter) {
		if (depth <= thread->filter_entry_depth) {
			thread->filter = false;
			return false;
		}
		return true;
	} else {
		const char *s = symbol_conf.graph_function;
		u64 ip;
		const char *name = FUNC0(sample, evsel, thread, al,
				&ip);
		unsigned nlen;

		if (!name)
			return false;
		nlen = FUNC2(name);
		while (*s) {
			unsigned len = FUNC1(s, ",");
			if (nlen == len && !FUNC3(name, s, len)) {
				thread->filter = true;
				thread->filter_entry_depth = depth;
				return true;
			}
			s += len;
			if (*s == ',')
				s++;
		}
		return false;
	}
}