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
struct tasklet_struct {struct tasklet_struct* next; int /*<<< orphan*/  data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; int /*<<< orphan*/  count; } ;
struct tasklet_head {struct tasklet_struct** tail; struct tasklet_struct* head; } ;
struct softirq_action {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TASKLET_STATE_SCHED ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tasklet_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct tasklet_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct softirq_action *a,
				  struct tasklet_head *tl_head,
				  unsigned int softirq_nr)
{
	struct tasklet_struct *list;

	FUNC3();
	list = tl_head->head;
	tl_head->head = NULL;
	tl_head->tail = &tl_head->head;
	FUNC4();

	while (list) {
		struct tasklet_struct *t = list;

		list = list->next;

		if (FUNC6(t)) {
			if (!FUNC2(&t->count)) {
				if (!FUNC8(TASKLET_STATE_SCHED,
							&t->state))
					FUNC0();
				t->func(t->data);
				FUNC7(t);
				continue;
			}
			FUNC7(t);
		}

		FUNC3();
		t->next = NULL;
		*tl_head->tail = t;
		tl_head->tail = &t->next;
		FUNC1(softirq_nr);
		FUNC4();
	}
}