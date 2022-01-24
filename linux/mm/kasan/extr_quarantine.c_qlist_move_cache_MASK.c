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
struct kmem_cache {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 struct kmem_cache* FUNC0 (struct qlist_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlist_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlist_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlist_head*,struct qlist_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qlist_head *from,
				   struct qlist_head *to,
				   struct kmem_cache *cache)
{
	struct qlist_node *curr;

	if (FUNC4(FUNC1(from)))
		return;

	curr = from->head;
	FUNC2(from);
	while (curr) {
		struct qlist_node *next = curr->next;
		struct kmem_cache *obj_cache = FUNC0(curr);

		if (obj_cache == cache)
			FUNC3(to, curr, obj_cache->size);
		else
			FUNC3(from, curr, obj_cache->size);

		curr = next;
	}
}