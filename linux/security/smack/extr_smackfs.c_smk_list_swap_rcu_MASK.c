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
struct list_head {struct list_head* next; struct list_head* prev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,struct list_head*,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct list_head *public,
			      struct list_head *private)
{
	struct list_head *first, *last;

	if (FUNC0(public)) {
		FUNC1(private, public, synchronize_rcu);
	} else {
		/* Remember public list before replacing it */
		first = public->next;
		last = public->prev;

		/* Publish private list in place of public in RCU-safe way */
		private->prev->next = public;
		private->next->prev = public;
		FUNC2(public->next, private->next);
		public->prev = private->prev;

		FUNC3();

		/* When all readers are done with the old public list,
		 * attach it in place of private */
		private->next = first;
		private->prev = last;
		first->prev = private;
		last->next = private;
	}
}