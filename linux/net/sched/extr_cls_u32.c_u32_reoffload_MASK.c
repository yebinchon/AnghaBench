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
struct tcf_proto {scalar_t__ prio; struct tc_u_common* data; } ;
struct tc_u_knode {int /*<<< orphan*/  flags; int /*<<< orphan*/  next; } ;
struct tc_u_hnode {scalar_t__ prio; unsigned int divisor; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ht; int /*<<< orphan*/  next; } ;
struct tc_u_common {int /*<<< orphan*/  hlist; } ;
struct netlink_ext_ack {int dummy; } ;
typedef  int /*<<< orphan*/  flow_setup_cb_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tcf_proto*,struct tc_u_hnode*,int,int /*<<< orphan*/ *,void*,struct netlink_ext_ack*) ; 
 int FUNC3 (struct tcf_proto*,struct tc_u_knode*,int,int /*<<< orphan*/ *,void*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC4(struct tcf_proto *tp, bool add, flow_setup_cb_t *cb,
			 void *cb_priv, struct netlink_ext_ack *extack)
{
	struct tc_u_common *tp_c = tp->data;
	struct tc_u_hnode *ht;
	struct tc_u_knode *n;
	unsigned int h;
	int err;

	for (ht = FUNC0(tp_c->hlist);
	     ht;
	     ht = FUNC0(ht->next)) {
		if (ht->prio != tp->prio)
			continue;

		/* When adding filters to a new dev, try to offload the
		 * hashtable first. When removing, do the filters before the
		 * hashtable.
		 */
		if (add && !FUNC1(ht->flags)) {
			err = FUNC2(tp, ht, add, cb, cb_priv,
						  extack);
			if (err)
				return err;
		}

		for (h = 0; h <= ht->divisor; h++) {
			for (n = FUNC0(ht->ht[h]);
			     n;
			     n = FUNC0(n->next)) {
				if (FUNC1(n->flags))
					continue;

				err = FUNC3(tp, n, add, cb,
							  cb_priv, extack);
				if (err)
					return err;
			}
		}

		if (!add && !FUNC1(ht->flags))
			FUNC2(tp, ht, add, cb, cb_priv, extack);
	}

	return 0;
}