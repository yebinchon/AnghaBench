#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_3__* prev; } ;
struct klist_node {TYPE_1__ n_node; int /*<<< orphan*/  n_ref; } ;
struct klist_iter {struct klist_node* i_cur; TYPE_2__* i_klist; } ;
struct TYPE_6__ {struct TYPE_6__* prev; } ;
struct TYPE_5__ {void (* put ) (struct klist_node*) ;int /*<<< orphan*/  k_lock; TYPE_3__ k_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct klist_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct klist_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct klist_node* FUNC6 (TYPE_3__*) ; 

struct klist_node *FUNC7(struct klist_iter *i)
{
	void (*put)(struct klist_node *) = i->i_klist->put;
	struct klist_node *last = i->i_cur;
	struct klist_node *prev;
	unsigned long flags;

	FUNC4(&i->i_klist->k_lock, flags);

	if (last) {
		prev = FUNC6(last->n_node.prev);
		if (!FUNC0(last))
			put = NULL;
	} else
		prev = FUNC6(i->i_klist->k_list.prev);

	i->i_cur = NULL;
	while (prev != FUNC6(&i->i_klist->k_list)) {
		if (FUNC3(!FUNC1(prev))) {
			FUNC2(&prev->n_ref);
			i->i_cur = prev;
			break;
		}
		prev = FUNC6(prev->n_node.prev);
	}

	FUNC5(&i->i_klist->k_lock, flags);

	if (put && last)
		put(last);
	return i->i_cur;
}