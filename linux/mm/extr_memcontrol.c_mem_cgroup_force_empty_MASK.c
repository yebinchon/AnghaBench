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
struct mem_cgroup {int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int EINTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int MEM_CGROUP_RECLAIM_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mem_cgroup*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct mem_cgroup *memcg)
{
	int nr_retries = MEM_CGROUP_RECLAIM_RETRIES;

	/* we call try-to-free pages for make this cgroup empty */
	FUNC2();

	FUNC1(memcg);

	/* try to free all pages in this cgroup */
	while (nr_retries && FUNC3(&memcg->memory)) {
		int progress;

		if (FUNC4(current))
			return -EINTR;

		progress = FUNC5(memcg, 1,
							GFP_KERNEL, true);
		if (!progress) {
			nr_retries--;
			/* maybe some writeback is necessary */
			FUNC0(BLK_RW_ASYNC, HZ/10);
		}

	}

	return 0;
}