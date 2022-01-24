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
struct tcf_proto {int /*<<< orphan*/  destroy_ht_node; } ;
struct tcf_chain {struct tcf_block* block; } ;
struct tcf_block {int /*<<< orphan*/  proto_destroy_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct tcf_chain *chain, struct tcf_proto *tp)
{
	struct tcf_block *block = chain->block;

	FUNC2(&block->proto_destroy_lock);
	if (FUNC1(&tp->destroy_ht_node))
		FUNC0(&tp->destroy_ht_node);
	FUNC3(&block->proto_destroy_lock);
}