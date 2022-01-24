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
struct ctl_table_header {struct ctl_node* node; struct ctl_table* ctl_table; } ;
struct ctl_table {int dummy; } ;
struct ctl_node {struct ctl_table_header* header; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 struct ctl_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_table_header*) ; 

__attribute__((used)) static void FUNC5(struct ctl_table_header **phead, struct ctl_table **pentry)
{
	struct ctl_table_header *head = *phead;
	struct ctl_table *entry = *pentry;
	struct ctl_node *ctl_node = &head->node[entry - head->ctl_table];

	FUNC2(&sysctl_lock);
	FUNC4(head);

	ctl_node = FUNC0(FUNC1(&ctl_node->node));
	FUNC3(&sysctl_lock);
	head = NULL;
	if (ctl_node) {
		head = ctl_node->header;
		entry = &head->ctl_table[ctl_node - head->node];
	}
	*phead = head;
	*pentry = entry;
}