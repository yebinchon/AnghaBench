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
struct qlist_node {struct qlist_node* next; } ;
struct qlist_head {size_t bytes; struct qlist_node* tail; struct qlist_node* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlist_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qlist_head *q, struct qlist_node *qlink,
		size_t size)
{
	if (FUNC1(FUNC0(q)))
		q->head = qlink;
	else
		q->tail->next = qlink;
	q->tail = qlink;
	qlink->next = NULL;
	q->bytes += size;
}