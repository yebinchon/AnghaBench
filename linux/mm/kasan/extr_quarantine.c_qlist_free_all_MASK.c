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
struct qlist_head {struct qlist_node* head; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlist_node*,struct kmem_cache*) ; 
 struct kmem_cache* FUNC1 (struct qlist_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlist_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlist_head*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qlist_head *q, struct kmem_cache *cache)
{
	struct qlist_node *qlink;

	if (FUNC4(FUNC2(q)))
		return;

	qlink = q->head;
	while (qlink) {
		struct kmem_cache *obj_cache =
			cache ? cache :	FUNC1(qlink);
		struct qlist_node *next = qlink->next;

		FUNC0(qlink, obj_cache);
		qlink = next;
	}
	FUNC3(q);
}