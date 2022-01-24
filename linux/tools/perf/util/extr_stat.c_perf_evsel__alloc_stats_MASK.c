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
struct TYPE_2__ {int /*<<< orphan*/  threads; } ;
struct evsel {TYPE_1__ core; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct evsel*,int,int) ; 
 scalar_t__ FUNC1 (struct evsel*,int,int) ; 
 scalar_t__ FUNC2 (struct evsel*) ; 
 int FUNC3 (struct evsel*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct evsel *evsel, bool alloc_raw)
{
	int ncpus = FUNC3(evsel);
	int nthreads = FUNC4(evsel->core.threads);

	if (FUNC2(evsel) < 0 ||
	    FUNC0(evsel, ncpus, nthreads) < 0 ||
	    (alloc_raw && FUNC1(evsel, ncpus, nthreads) < 0))
		return -ENOMEM;

	return 0;
}