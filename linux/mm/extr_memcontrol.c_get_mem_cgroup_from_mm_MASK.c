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
struct mm_struct {int /*<<< orphan*/  owner; } ;
struct mem_cgroup {int /*<<< orphan*/  css; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 struct mem_cgroup* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct mem_cgroup* root_mem_cgroup ; 
 scalar_t__ FUNC6 (int) ; 

struct mem_cgroup *FUNC7(struct mm_struct *mm)
{
	struct mem_cgroup *memcg;

	if (FUNC1())
		return NULL;

	FUNC4();
	do {
		/*
		 * Page cache insertions can happen withou an
		 * actual mm context, e.g. during disk probing
		 * on boot, loopback IO, acct() writes etc.
		 */
		if (FUNC6(!mm))
			memcg = root_mem_cgroup;
		else {
			memcg = FUNC2(FUNC3(mm->owner));
			if (FUNC6(!memcg))
				memcg = root_mem_cgroup;
		}
	} while (!FUNC0(&memcg->css));
	FUNC5();
	return memcg;
}