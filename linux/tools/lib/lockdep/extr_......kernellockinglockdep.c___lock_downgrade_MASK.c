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
struct task_struct {unsigned int lockdep_depth; int /*<<< orphan*/  curr_chain_key; } ;
struct lockdep_map {int dummy; } ;
struct held_lock {int read; unsigned long acquire_ip; int /*<<< orphan*/  prev_chain_key; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  debug_locks ; 
 struct held_lock* FUNC2 (struct task_struct*,struct lockdep_map*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct lockdep_map*,unsigned long) ; 
 scalar_t__ FUNC4 (struct task_struct*,unsigned int,int,unsigned int*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct lockdep_map *lock, unsigned long ip)
{
	struct task_struct *curr = current;
	unsigned int depth, merged = 0;
	struct held_lock *hlock;
	int i;

	if (FUNC5(!debug_locks))
		return 0;

	depth = curr->lockdep_depth;
	/*
	 * This function is about (re)setting the class of a held lock,
	 * yet we're not actually holding any locks. Naughty user!
	 */
	if (FUNC0(!depth))
		return 0;

	hlock = FUNC2(curr, lock, depth, &i);
	if (!hlock) {
		FUNC3(curr, lock, ip);
		return 0;
	}

	curr->lockdep_depth = i;
	curr->curr_chain_key = hlock->prev_chain_key;

	FUNC1(hlock->read, "downgrading a read lock");
	hlock->read = 1;
	hlock->acquire_ip = ip;

	if (FUNC4(curr, depth, i, &merged))
		return 0;

	/* Merging can't happen with unchanged classes.. */
	if (FUNC0(merged))
		return 0;

	/*
	 * I took it apart and put it back together again, except now I have
	 * these 'spare' parts.. where shall I put them.
	 */
	if (FUNC0(curr->lockdep_depth != depth))
		return 0;

	return 1;
}