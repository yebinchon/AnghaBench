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
struct tcf_proto {struct tc_u_common* data; int /*<<< orphan*/  root; } ;
struct tc_u_hnode {int refcnt; int /*<<< orphan*/  next; } ;
struct tc_u_common {scalar_t__ refcnt; int /*<<< orphan*/  handle_idr; int /*<<< orphan*/  hlist; int /*<<< orphan*/  hnode; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tc_u_common*) ; 
 int /*<<< orphan*/  FUNC5 (struct tc_u_hnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 struct tc_u_hnode* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_proto*,struct tc_u_hnode*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_proto*,struct tc_u_hnode*,struct netlink_ext_ack*) ; 

__attribute__((used)) static void FUNC9(struct tcf_proto *tp, bool rtnl_held,
			struct netlink_ext_ack *extack)
{
	struct tc_u_common *tp_c = tp->data;
	struct tc_u_hnode *root_ht = FUNC6(tp->root);

	FUNC1(root_ht == NULL);

	if (root_ht && --root_ht->refcnt == 1)
		FUNC8(tp, root_ht, extack);

	if (--tp_c->refcnt == 0) {
		struct tc_u_hnode *ht;

		FUNC2(&tp_c->hnode);

		while ((ht = FUNC6(tp_c->hlist)) != NULL) {
			FUNC7(tp, ht, extack);
			FUNC0(tp_c->hlist, ht->next);

			/* u32_destroy_key() will later free ht for us, if it's
			 * still referenced by some knode
			 */
			if (--ht->refcnt == 0)
				FUNC5(ht, rcu);
		}

		FUNC3(&tp_c->handle_idr);
		FUNC4(tp_c);
	}

	tp->data = NULL;
}