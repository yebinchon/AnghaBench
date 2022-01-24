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
typedef  void* u64 ;
typedef  int u32 ;
struct evsel_runtime {int ncpu; void** last_time; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct evsel_runtime* FUNC1 (struct evsel*) ; 
 void* FUNC2 (void**,int) ; 

__attribute__((used)) static void FUNC3(struct evsel *evsel,
				  u64 timestamp, u32 cpu)
{
	struct evsel_runtime *r = FUNC1(evsel);

	if (r == NULL)
		return;

	if ((cpu >= r->ncpu) || (r->last_time == NULL)) {
		int i, n = FUNC0(cpu+1);
		void *p = r->last_time;

		p = FUNC2(r->last_time, n * sizeof(u64));
		if (!p)
			return;

		r->last_time = p;
		for (i = r->ncpu; i < n; ++i)
			r->last_time[i] = (u64) 0;

		r->ncpu = n;
	}

	r->last_time[cpu] = timestamp;
}