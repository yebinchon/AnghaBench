#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct TYPE_2__* prev; } ;
struct bpf_lru_node {int type; TYPE_1__ list; scalar_t__ ref; } ;
struct bpf_lru_list {int /*<<< orphan*/ * lists; TYPE_1__* next_inactive_rotation; } ;
typedef  enum bpf_lru_list_type { ____Placeholder_bpf_lru_list_type } bpf_lru_list_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_lru_list*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_lru_list*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct bpf_lru_list *l,
				struct bpf_lru_node *node,
				enum bpf_lru_list_type tgt_type)
{
	if (FUNC1(FUNC0(node->type)) ||
	    FUNC1(FUNC0(tgt_type)))
		return;

	if (node->type != tgt_type) {
		FUNC2(l, node->type);
		FUNC3(l, tgt_type);
		node->type = tgt_type;
	}
	node->ref = 0;

	/* If the moving node is the next_inactive_rotation candidate,
	 * move the next_inactive_rotation pointer also.
	 */
	if (&node->list == l->next_inactive_rotation)
		l->next_inactive_rotation = l->next_inactive_rotation->prev;

	FUNC4(&node->list, &l->lists[tgt_type]);
}