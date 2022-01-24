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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tcf_proto {int dummy; } ;
struct tcf_ife_params {int flags; int /*<<< orphan*/  eth_type; int /*<<< orphan*/  eth_src; int /*<<< orphan*/  eth_dst; } ;
struct tcf_ife_info {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  params; int /*<<< orphan*/  metalist; } ;
struct tcf_chain {int dummy; } ;
struct tc_ife {int flags; int /*<<< orphan*/  action; int /*<<< orphan*/  index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_IFE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFE_ENCODE ; 
 int /*<<< orphan*/  IFE_META_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_IFE_DMAC ; 
 int /*<<< orphan*/  TCA_IFE_MAX ; 
 size_t TCA_IFE_METALST ; 
 size_t TCA_IFE_PARMS ; 
 size_t TCA_IFE_SMAC ; 
 size_t TCA_IFE_TYPE ; 
 int /*<<< orphan*/  act_ife_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ife_net_id ; 
 int /*<<< orphan*/ * ife_policy ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_ife_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_ife_params*,int /*<<< orphan*/ ) ; 
 struct tcf_ife_params* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct tc_action_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct nlattr*) ; 
 int FUNC10 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct tcf_ife_info*,struct nlattr**,int,int) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct tcf_ife_params*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC16 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC17 (struct tcf_chain*) ; 
 int FUNC18 (struct tc_action_net*,int /*<<< orphan*/ *,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC19 (struct tc_action_net*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct tc_action_net*,int /*<<< orphan*/ ,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC22 (struct tc_action*,int) ; 
 struct tcf_ife_info* FUNC23 (struct tc_action*) ; 
 int FUNC24 (struct tcf_ife_info*,int) ; 

__attribute__((used)) static int FUNC25(struct net *net, struct nlattr *nla,
			struct nlattr *est, struct tc_action **a,
			int ovr, int bind, bool rtnl_held,
			struct tcf_proto *tp, struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC7(net, ife_net_id);
	struct nlattr *tb[TCA_IFE_MAX + 1];
	struct nlattr *tb2[IFE_META_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	struct tcf_ife_params *p;
	struct tcf_ife_info *ife;
	u16 ife_type = ETH_P_IFE;
	struct tc_ife *parm;
	u8 *daddr = NULL;
	u8 *saddr = NULL;
	bool exists = false;
	int ret = 0;
	u32 index;
	int err;

	if (!nla) {
		FUNC1(extack, "IFE requires attributes to be passed");
		return -EINVAL;
	}

	err = FUNC10(tb, TCA_IFE_MAX, nla, ife_policy,
					  NULL);
	if (err < 0)
		return err;

	if (!tb[TCA_IFE_PARMS])
		return -EINVAL;

	parm = FUNC8(tb[TCA_IFE_PARMS]);

	/* IFE_DECODE is 0 and indicates the opposite of IFE_ENCODE because
	 * they cannot run as the same time. Check on all other values which
	 * are not supported right now.
	 */
	if (parm->flags & ~IFE_ENCODE)
		return -EINVAL;

	p = FUNC6(sizeof(*p), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	index = parm->index;
	err = FUNC18(tn, &index, a, bind);
	if (err < 0) {
		FUNC4(p);
		return err;
	}
	exists = err;
	if (exists && bind) {
		FUNC4(p);
		return 0;
	}

	if (!exists) {
		ret = FUNC20(tn, index, est, a, &act_ife_ops,
				     bind, true);
		if (ret) {
			FUNC19(tn, index);
			FUNC4(p);
			return ret;
		}
		ret = ACT_P_CREATED;
	} else if (!ovr) {
		FUNC22(*a, bind);
		FUNC4(p);
		return -EEXIST;
	}

	ife = FUNC23(*a);
	err = FUNC15(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;

	p->flags = parm->flags;

	if (parm->flags & IFE_ENCODE) {
		if (tb[TCA_IFE_TYPE])
			ife_type = FUNC9(tb[TCA_IFE_TYPE]);
		if (tb[TCA_IFE_DMAC])
			daddr = FUNC8(tb[TCA_IFE_DMAC]);
		if (tb[TCA_IFE_SMAC])
			saddr = FUNC8(tb[TCA_IFE_SMAC]);
	}

	if (parm->flags & IFE_ENCODE) {
		if (daddr)
			FUNC3(p->eth_dst, daddr);
		else
			FUNC2(p->eth_dst);

		if (saddr)
			FUNC3(p->eth_src, saddr);
		else
			FUNC2(p->eth_src);

		p->eth_type = ife_type;
	}


	if (ret == ACT_P_CREATED)
		FUNC0(&ife->metalist);

	if (tb[TCA_IFE_METALST]) {
		err = FUNC10(tb2, IFE_META_MAX,
						  tb[TCA_IFE_METALST], NULL,
						  NULL);
		if (err)
			goto metadata_parse_err;
		err = FUNC11(ife, tb2, exists, rtnl_held);
		if (err)
			goto metadata_parse_err;

	} else {
		/* if no passed metadata allow list or passed allow-all
		 * then here we process by adding as many supported metadatum
		 * as we can. You better have at least one else we are
		 * going to bail out
		 */
		err = FUNC24(ife, exists);
		if (err)
			goto metadata_parse_err;
	}

	if (exists)
		FUNC13(&ife->tcf_lock);
	/* protected by tcf_lock when modifying existing action */
	goto_ch = FUNC16(*a, parm->action, goto_ch);
	FUNC12(ife->params, p, 1);

	if (exists)
		FUNC14(&ife->tcf_lock);
	if (goto_ch)
		FUNC17(goto_ch);
	if (p)
		FUNC5(p, rcu);

	if (ret == ACT_P_CREATED)
		FUNC21(tn, *a);

	return ret;
metadata_parse_err:
	if (goto_ch)
		FUNC17(goto_ch);
release_idr:
	FUNC4(p);
	FUNC22(*a, bind);
	return err;
}