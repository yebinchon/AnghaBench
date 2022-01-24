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
struct lock_class_key {int dummy; } ;
struct lock_class {int dummy; } ;
struct held_lock {int /*<<< orphan*/  prev_chain_key; struct lock_class* class_idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  debug_locks ; 
 struct held_lock* FUNC1 (struct task_struct*,struct lockdep_map*,unsigned int,int*) ; 
 int lock_classes ; 
 int /*<<< orphan*/  FUNC2 (struct lockdep_map*,char const*,struct lock_class_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct lockdep_map*,unsigned long) ; 
 scalar_t__ FUNC4 (struct task_struct*,unsigned int,int,unsigned int*) ; 
 struct lock_class* FUNC5 (struct lockdep_map*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct lockdep_map *lock, const char *name,
		 struct lock_class_key *key, unsigned int subclass,
		 unsigned long ip)
{
	struct task_struct *curr = current;
	unsigned int depth, merged = 0;
	struct held_lock *hlock;
	struct lock_class *class;
	int i;

	if (FUNC6(!debug_locks))
		return 0;

	depth = curr->lockdep_depth;
	/*
	 * This function is about (re)setting the class of a held lock,
	 * yet we're not actually holding any locks. Naughty user!
	 */
	if (FUNC0(!depth))
		return 0;

	hlock = FUNC1(curr, lock, depth, &i);
	if (!hlock) {
		FUNC3(curr, lock, ip);
		return 0;
	}

	FUNC2(lock, name, key, 0);
	class = FUNC5(lock, subclass, 0);
	hlock->class_idx = class - lock_classes;

	curr->lockdep_depth = i;
	curr->curr_chain_key = hlock->prev_chain_key;

	if (FUNC4(curr, depth, i, &merged))
		return 0;

	/*
	 * I took it apart and put it back together again, except now I have
	 * these 'spare' parts.. where shall I put them.
	 */
	if (FUNC0(curr->lockdep_depth != depth - merged))
		return 0;
	return 1;
}