#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_police_params {int tcfp_result; int tcfp_mtu; int rate_present; int peak_present; scalar_t__ tcfp_mtu_ptoks; int /*<<< orphan*/  tcfp_burst; void* tcfp_ewma_rate; int /*<<< orphan*/  peak; int /*<<< orphan*/  rate; } ;
struct TYPE_4__ {int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_police {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  params; int /*<<< orphan*/  tcfp_lock; scalar_t__ tcfp_ptoks; int /*<<< orphan*/  tcfp_toks; int /*<<< orphan*/  tcfp_t_c; int /*<<< orphan*/  tcf_rate_est; TYPE_1__ common; int /*<<< orphan*/  tcf_bstats; } ;
struct tcf_chain {int dummy; } ;
struct tc_police_compat {int dummy; } ;
struct TYPE_5__ {scalar_t__ rate; } ;
struct tc_police {int mtu; int /*<<< orphan*/  action; int /*<<< orphan*/  burst; TYPE_2__ peakrate; TYPE_2__ rate; int /*<<< orphan*/  index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct TYPE_6__ {int cell_log; } ;
struct qdisc_rate_table {TYPE_3__ rate; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t TCA_POLICE_AVRATE ; 
 int /*<<< orphan*/  TCA_POLICE_MAX ; 
 size_t TCA_POLICE_PEAKRATE ; 
 size_t TCA_POLICE_PEAKRATE64 ; 
 size_t TCA_POLICE_RATE ; 
 size_t TCA_POLICE_RATE64 ; 
 size_t TCA_POLICE_RESULT ; 
 size_t TCA_POLICE_TBF ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TC_ACT_GOTO_CHAIN ; 
 int TC_ACT_OK ; 
 int /*<<< orphan*/  act_police_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_police_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct tcf_police_params* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct tc_action_net* FUNC9 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_police* FUNC10 (struct nlattr*) ; 
 void* FUNC11 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct nlattr*) ; 
 int FUNC13 (struct nlattr*) ; 
 int FUNC14 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  police_net_id ; 
 int /*<<< orphan*/  police_policy ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct qdisc_rate_table* FUNC17 (TYPE_2__*,struct nlattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct qdisc_rate_table*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct tcf_police_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC24 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC25 (struct tcf_chain*) ; 
 int FUNC26 (struct tc_action_net*,int /*<<< orphan*/ *,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC27 (struct tc_action_net*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct tc_action_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC30 (struct tc_action*,int) ; 
 struct tcf_police* FUNC31 (struct tc_action*) ; 
 scalar_t__ FUNC32 (int) ; 

__attribute__((used)) static int FUNC33(struct net *net, struct nlattr *nla,
			       struct nlattr *est, struct tc_action **a,
			       int ovr, int bind, bool rtnl_held,
			       struct tcf_proto *tp,
			       struct netlink_ext_ack *extack)
{
	int ret = 0, tcfp_result = TC_ACT_OK, err, size;
	struct nlattr *tb[TCA_POLICE_MAX + 1];
	struct tcf_chain *goto_ch = NULL;
	struct tc_police *parm;
	struct tcf_police *police;
	struct qdisc_rate_table *R_tab = NULL, *P_tab = NULL;
	struct tc_action_net *tn = FUNC9(net, police_net_id);
	struct tcf_police_params *new;
	bool exists = false;
	u32 index;
	u64 rate64, prate64;

	if (nla == NULL)
		return -EINVAL;

	err = FUNC14(tb, TCA_POLICE_MAX, nla,
					  police_policy, NULL);
	if (err < 0)
		return err;

	if (tb[TCA_POLICE_TBF] == NULL)
		return -EINVAL;
	size = FUNC13(tb[TCA_POLICE_TBF]);
	if (size != sizeof(*parm) && size != sizeof(struct tc_police_compat))
		return -EINVAL;

	parm = FUNC10(tb[TCA_POLICE_TBF]);
	index = parm->index;
	err = FUNC26(tn, &index, a, bind);
	if (err < 0)
		return err;
	exists = err;
	if (exists && bind)
		return 0;

	if (!exists) {
		ret = FUNC28(tn, index, NULL, a,
				     &act_police_ops, bind, true);
		if (ret) {
			FUNC27(tn, index);
			return ret;
		}
		ret = ACT_P_CREATED;
		FUNC21(&(FUNC31(*a)->tcfp_lock));
	} else if (!ovr) {
		FUNC30(*a, bind);
		return -EEXIST;
	}
	err = FUNC23(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;

	police = FUNC31(*a);
	if (parm->rate.rate) {
		err = -ENOMEM;
		R_tab = FUNC17(&parm->rate, tb[TCA_POLICE_RATE], NULL);
		if (R_tab == NULL)
			goto failure;

		if (parm->peakrate.rate) {
			P_tab = FUNC17(&parm->peakrate,
					       tb[TCA_POLICE_PEAKRATE], NULL);
			if (P_tab == NULL)
				goto failure;
		}
	}

	if (est) {
		err = FUNC4(&police->tcf_bstats,
					    police->common.cpu_bstats,
					    &police->tcf_rate_est,
					    &police->tcf_lock,
					    NULL, est);
		if (err)
			goto failure;
	} else if (tb[TCA_POLICE_AVRATE] &&
		   (ret == ACT_P_CREATED ||
		    !FUNC3(&police->tcf_rate_est))) {
		err = -EINVAL;
		goto failure;
	}

	if (tb[TCA_POLICE_RESULT]) {
		tcfp_result = FUNC11(tb[TCA_POLICE_RESULT]);
		if (FUNC2(tcfp_result, TC_ACT_GOTO_CHAIN)) {
			FUNC0(extack,
				       "goto chain not allowed on fallback");
			err = -EINVAL;
			goto failure;
		}
	}

	new = FUNC7(sizeof(*new), GFP_KERNEL);
	if (FUNC32(!new)) {
		err = -ENOMEM;
		goto failure;
	}

	/* No failure allowed after this point */
	new->tcfp_result = tcfp_result;
	new->tcfp_mtu = parm->mtu;
	if (!new->tcfp_mtu) {
		new->tcfp_mtu = ~0;
		if (R_tab)
			new->tcfp_mtu = 255 << R_tab->rate.cell_log;
	}
	if (R_tab) {
		new->rate_present = true;
		rate64 = tb[TCA_POLICE_RATE64] ?
			 FUNC12(tb[TCA_POLICE_RATE64]) : 0;
		FUNC16(&new->rate, &R_tab->rate, rate64);
		FUNC18(R_tab);
	} else {
		new->rate_present = false;
	}
	if (P_tab) {
		new->peak_present = true;
		prate64 = tb[TCA_POLICE_PEAKRATE64] ?
			  FUNC12(tb[TCA_POLICE_PEAKRATE64]) : 0;
		FUNC16(&new->peak, &P_tab->rate, prate64);
		FUNC18(P_tab);
	} else {
		new->peak_present = false;
	}

	new->tcfp_burst = FUNC1(parm->burst);
	if (new->peak_present)
		new->tcfp_mtu_ptoks = (s64)FUNC15(&new->peak,
							 new->tcfp_mtu);

	if (tb[TCA_POLICE_AVRATE])
		new->tcfp_ewma_rate = FUNC11(tb[TCA_POLICE_AVRATE]);

	FUNC20(&police->tcf_lock);
	FUNC20(&police->tcfp_lock);
	police->tcfp_t_c = FUNC6();
	police->tcfp_toks = new->tcfp_burst;
	if (new->peak_present)
		police->tcfp_ptoks = new->tcfp_mtu_ptoks;
	FUNC22(&police->tcfp_lock);
	goto_ch = FUNC24(*a, parm->action, goto_ch);
	FUNC19(police->params,
			   new,
			   FUNC8(&police->tcf_lock));
	FUNC22(&police->tcf_lock);

	if (goto_ch)
		FUNC25(goto_ch);
	if (new)
		FUNC5(new, rcu);

	if (ret == ACT_P_CREATED)
		FUNC29(tn, *a);
	return ret;

failure:
	FUNC18(P_tab);
	FUNC18(R_tab);
	if (goto_ch)
		FUNC25(goto_ch);
release_idr:
	FUNC30(*a, bind);
	return err;
}