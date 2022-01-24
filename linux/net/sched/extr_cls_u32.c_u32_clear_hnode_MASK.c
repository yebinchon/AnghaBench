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
struct tcf_proto {struct tc_u_common* data; } ;
struct tc_u_knode {int /*<<< orphan*/  rwork; int /*<<< orphan*/  exts; int /*<<< orphan*/  handle; int /*<<< orphan*/  res; int /*<<< orphan*/  next; } ;
struct tc_u_hnode {unsigned int divisor; int /*<<< orphan*/  handle_idr; int /*<<< orphan*/ * ht; } ;
struct tc_u_common {int /*<<< orphan*/  knodes; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tc_u_knode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tc_u_knode* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  u32_delete_key_freepf_work ; 
 int /*<<< orphan*/  FUNC6 (struct tc_u_knode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tcf_proto*,struct tc_u_knode*,struct netlink_ext_ack*) ; 

__attribute__((used)) static void FUNC8(struct tcf_proto *tp, struct tc_u_hnode *ht,
			    struct netlink_ext_ack *extack)
{
	struct tc_u_common *tp_c = tp->data;
	struct tc_u_knode *n;
	unsigned int h;

	for (h = 0; h <= ht->divisor; h++) {
		while ((n = FUNC2(ht->ht[h])) != NULL) {
			FUNC0(ht->ht[h],
					 FUNC2(n->next));
			tp_c->knodes--;
			FUNC5(tp, &n->res);
			FUNC7(tp, n, extack);
			FUNC1(&ht->handle_idr, n->handle);
			if (FUNC3(&n->exts))
				FUNC4(&n->rwork, u32_delete_key_freepf_work);
			else
				FUNC6(n, true);
		}
	}
}