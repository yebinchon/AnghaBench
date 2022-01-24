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
struct llist_node {int /*<<< orphan*/  next; } ;
struct llist_head {int /*<<< orphan*/  first; } ;

/* Variables and functions */
 struct llist_node* FUNC0 (int /*<<< orphan*/ ) ; 
 struct llist_node* FUNC1 (int /*<<< orphan*/ *,struct llist_node*,struct llist_node*) ; 
 struct llist_node* FUNC2 (int /*<<< orphan*/ *) ; 

struct llist_node *FUNC3(struct llist_head *head)
{
	struct llist_node *entry, *old_entry, *next;

	entry = FUNC2(&head->first);
	for (;;) {
		if (entry == NULL)
			return NULL;
		old_entry = entry;
		next = FUNC0(entry->next);
		entry = FUNC1(&head->first, old_entry, next);
		if (entry == old_entry)
			break;
	}

	return entry;
}