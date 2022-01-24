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
struct journal_head {struct journal_head* b_cpnext; struct journal_head* b_cpprev; } ;

/* Variables and functions */
 int FUNC0 (struct journal_head*) ; 
 int FUNC1 (struct journal_head*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct journal_head *jh, bool destroy)
{
	struct journal_head *last_jh;
	struct journal_head *next_jh = jh;
	int ret;

	if (!jh)
		return 0;

	last_jh = jh->b_cpprev;
	do {
		jh = next_jh;
		next_jh = jh->b_cpnext;
		if (!destroy)
			ret = FUNC1(jh);
		else
			ret = FUNC0(jh) + 1;
		if (!ret)
			return 0;
		if (ret == 2)
			return 1;
		/*
		 * This function only frees up some memory
		 * if possible so we dont have an obligation
		 * to finish processing. Bail out if preemption
		 * requested:
		 */
		if (FUNC2())
			return 0;
	} while (jh != last_jh);

	return 0;
}