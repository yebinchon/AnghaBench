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
typedef  scalar_t__ u32 ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct cls_cgroup_head {scalar_t__ handle; int /*<<< orphan*/  exts; int /*<<< orphan*/  rwork; int /*<<< orphan*/  ematches; struct tcf_proto* tp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TCA_CGROUP_ACT ; 
 size_t TCA_CGROUP_EMATCHES ; 
 int /*<<< orphan*/  TCA_CGROUP_MAX ; 
 int /*<<< orphan*/  TCA_CGROUP_POLICE ; 
 size_t TCA_OPTIONS ; 
 size_t TCA_RATE ; 
 int /*<<< orphan*/  cgroup_policy ; 
 int /*<<< orphan*/  cls_cgroup_destroy_work ; 
 int /*<<< orphan*/  FUNC0 (struct cls_cgroup_head*) ; 
 struct cls_cgroup_head* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cls_cgroup_head*) ; 
 struct cls_cgroup_head* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tcf_proto*,struct nlattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net*,struct tcf_proto*,struct nlattr**,struct nlattr*,int /*<<< orphan*/ *,int,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net *net, struct sk_buff *in_skb,
			     struct tcf_proto *tp, unsigned long base,
			     u32 handle, struct nlattr **tca,
			     void **arg, bool ovr, bool rtnl_held,
			     struct netlink_ext_ack *extack)
{
	struct nlattr *tb[TCA_CGROUP_MAX + 1];
	struct cls_cgroup_head *head = FUNC4(tp->root);
	struct cls_cgroup_head *new;
	int err;

	if (!tca[TCA_OPTIONS])
		return -EINVAL;

	if (!head && !handle)
		return -EINVAL;

	if (head && handle != head->handle)
		return -ENOENT;

	new = FUNC1(sizeof(*head), GFP_KERNEL);
	if (!new)
		return -ENOBUFS;

	err = FUNC8(&new->exts, net, TCA_CGROUP_ACT, TCA_CGROUP_POLICE);
	if (err < 0)
		goto errout;
	new->handle = handle;
	new->tp = tp;
	err = FUNC2(tb, TCA_CGROUP_MAX,
					  tca[TCA_OPTIONS], cgroup_policy,
					  NULL);
	if (err < 0)
		goto errout;

	err = FUNC9(net, tp, tb, tca[TCA_RATE], &new->exts, ovr,
				true, extack);
	if (err < 0)
		goto errout;

	err = FUNC5(tp, tb[TCA_CGROUP_EMATCHES], &new->ematches);
	if (err < 0)
		goto errout;

	FUNC3(tp->root, new);
	if (head) {
		FUNC7(&head->exts);
		FUNC10(&head->rwork, cls_cgroup_destroy_work);
	}
	return 0;
errout:
	FUNC6(&new->exts);
	FUNC0(new);
	return err;
}