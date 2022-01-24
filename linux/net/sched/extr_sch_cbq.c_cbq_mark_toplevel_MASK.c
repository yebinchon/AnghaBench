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
struct cbq_sched_data {int toplevel; } ;
struct cbq_class {int level; scalar_t__ undertime; struct cbq_class* borrow; } ;
typedef  scalar_t__ psched_time_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static void
FUNC1(struct cbq_sched_data *q, struct cbq_class *cl)
{
	int toplevel = q->toplevel;

	if (toplevel > cl->level) {
		psched_time_t now = FUNC0();

		do {
			if (cl->undertime < now) {
				q->toplevel = cl->level;
				return;
			}
		} while ((cl = cl->borrow) != NULL && toplevel > cl->level);
	}
}