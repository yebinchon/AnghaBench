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
struct bpf_lru_node {int type; int /*<<< orphan*/  list; scalar_t__ ref; } ;
struct bpf_lru_list {int /*<<< orphan*/ * lists; } ;
typedef  enum bpf_lru_list_type { ____Placeholder_bpf_lru_list_type } bpf_lru_list_type ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_lru_list*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bpf_lru_list *l,
				   struct bpf_lru_node *node,
				   enum bpf_lru_list_type tgt_type)
{
	if (FUNC1(!FUNC0(node->type)) ||
	    FUNC1(FUNC0(tgt_type)))
		return;

	FUNC2(l, tgt_type);
	node->type = tgt_type;
	node->ref = 0;
	FUNC3(&node->list, &l->lists[tgt_type]);
}