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
struct rb_root {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  count; } ;
struct nf_conncount_rb {TYPE_1__ list; int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  __tree_nodes_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rb_root *root,
			    struct nf_conncount_rb *gc_nodes[],
			    unsigned int gc_count)
{
	struct nf_conncount_rb *rbconn;

	while (gc_count) {
		rbconn = gc_nodes[--gc_count];
		FUNC2(&rbconn->list.list_lock);
		if (!rbconn->list.count) {
			FUNC1(&rbconn->node, root);
			FUNC0(&rbconn->rcu_head, __tree_nodes_free);
		}
		FUNC3(&rbconn->list.list_lock);
	}
}