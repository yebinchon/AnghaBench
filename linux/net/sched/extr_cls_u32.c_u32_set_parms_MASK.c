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
typedef  void* u32 ;
struct tcf_proto {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {void* classid; } ;
struct tc_u_knode {int ifindex; TYPE_1__ res; int /*<<< orphan*/  ht_down; int /*<<< orphan*/  exts; } ;
struct tc_u_hnode {int /*<<< orphan*/  refcnt; scalar_t__ is_root; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_U32_CLASSID ; 
 size_t TCA_U32_INDEV ; 
 size_t TCA_U32_LINK ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tc_u_hnode*) ; 
 struct tc_u_hnode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*,TYPE_1__*,unsigned long) ; 
 int FUNC6 (struct net*,struct nlattr*,struct netlink_ext_ack*) ; 
 int FUNC7 (struct net*,struct tcf_proto*,struct nlattr**,struct nlattr*,int /*<<< orphan*/ *,int,int,struct netlink_ext_ack*) ; 
 struct tc_u_hnode* FUNC8 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC9(struct net *net, struct tcf_proto *tp,
			 unsigned long base,
			 struct tc_u_knode *n, struct nlattr **tb,
			 struct nlattr *est, bool ovr,
			 struct netlink_ext_ack *extack)
{
	int err;

	err = FUNC7(net, tp, tb, est, &n->exts, ovr, true, extack);
	if (err < 0)
		return err;

	if (tb[TCA_U32_LINK]) {
		u32 handle = FUNC2(tb[TCA_U32_LINK]);
		struct tc_u_hnode *ht_down = NULL, *ht_old;

		if (FUNC1(handle)) {
			FUNC0(extack, "u32 Link handle must be a hash table");
			return -EINVAL;
		}

		if (handle) {
			ht_down = FUNC8(tp->data, handle);

			if (!ht_down) {
				FUNC0(extack, "Link hash table not found");
				return -EINVAL;
			}
			if (ht_down->is_root) {
				FUNC0(extack, "Not linking to root node");
				return -EINVAL;
			}
			ht_down->refcnt++;
		}

		ht_old = FUNC4(n->ht_down);
		FUNC3(n->ht_down, ht_down);

		if (ht_old)
			ht_old->refcnt--;
	}
	if (tb[TCA_U32_CLASSID]) {
		n->res.classid = FUNC2(tb[TCA_U32_CLASSID]);
		FUNC5(tp, &n->res, base);
	}

	if (tb[TCA_U32_INDEV]) {
		int ret;
		ret = FUNC6(net, tb[TCA_U32_INDEV], extack);
		if (ret < 0)
			return -EINVAL;
		n->ifindex = ret;
	}
	return 0;
}