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
struct mmap_params {int /*<<< orphan*/  auxtrace_mp; } ;
struct TYPE_2__ {int /*<<< orphan*/  threads; } ;
struct evlist {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct evlist*,int,int) ; 
 scalar_t__ FUNC1 (struct evlist*,int,struct mmap_params*,int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct evlist*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct evlist *evlist,
					struct mmap_params *mp)
{
	int thread;
	int nr_threads = FUNC3(evlist->core.threads);

	FUNC4("perf event ring buffer mmapped per thread\n");
	for (thread = 0; thread < nr_threads; thread++) {
		int output = -1;
		int output_overwrite = -1;

		FUNC0(&mp->auxtrace_mp, evlist, thread,
					      false);

		if (FUNC1(evlist, thread, mp, 0, thread,
						&output, &output_overwrite))
			goto out_unmap;
	}

	return 0;

out_unmap:
	FUNC2(evlist);
	return -1;
}