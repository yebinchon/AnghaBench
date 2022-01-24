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
typedef  void* u32 ;
struct tcf_sample {int truncate; int /*<<< orphan*/  tcf_lock; void* trunc_size; int /*<<< orphan*/  psample_group; void* psample_group_num; void* rate; } ;
struct tcf_proto {int dummy; } ;
struct tcf_chain {int dummy; } ;
struct tc_sample {int /*<<< orphan*/  action; void* index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct psample_group {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TCA_SAMPLE_MAX ; 
 size_t TCA_SAMPLE_PARMS ; 
 size_t TCA_SAMPLE_PSAMPLE_GROUP ; 
 size_t TCA_SAMPLE_RATE ; 
 size_t TCA_SAMPLE_TRUNC_SIZE ; 
 int /*<<< orphan*/  act_sample_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tc_action_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 struct tc_sample* FUNC3 (struct nlattr*) ; 
 void* FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct psample_group* FUNC6 (struct net*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct psample_group*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct psample_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sample_net_id ; 
 int /*<<< orphan*/  sample_policy ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ; 
 struct tcf_chain* FUNC12 (struct tc_action*,int /*<<< orphan*/ ,struct tcf_chain*) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_chain*) ; 
 int FUNC14 (struct tc_action_net*,void**,struct tc_action**,int) ; 
 int /*<<< orphan*/  FUNC15 (struct tc_action_net*,void*) ; 
 int FUNC16 (struct tc_action_net*,void*,struct nlattr*,struct tc_action**,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct tc_action_net*,struct tc_action*) ; 
 int /*<<< orphan*/  FUNC18 (struct tc_action*,int) ; 
 struct tcf_sample* FUNC19 (struct tc_action*) ; 

__attribute__((used)) static int FUNC20(struct net *net, struct nlattr *nla,
			   struct nlattr *est, struct tc_action **a, int ovr,
			   int bind, bool rtnl_held, struct tcf_proto *tp,
			   struct netlink_ext_ack *extack)
{
	struct tc_action_net *tn = FUNC2(net, sample_net_id);
	struct nlattr *tb[TCA_SAMPLE_MAX + 1];
	struct psample_group *psample_group;
	u32 psample_group_num, rate, index;
	struct tcf_chain *goto_ch = NULL;
	struct tc_sample *parm;
	struct tcf_sample *s;
	bool exists = false;
	int ret, err;

	if (!nla)
		return -EINVAL;
	ret = FUNC5(tb, TCA_SAMPLE_MAX, nla,
					  sample_policy, NULL);
	if (ret < 0)
		return ret;
	if (!tb[TCA_SAMPLE_PARMS] || !tb[TCA_SAMPLE_RATE] ||
	    !tb[TCA_SAMPLE_PSAMPLE_GROUP])
		return -EINVAL;

	parm = FUNC3(tb[TCA_SAMPLE_PARMS]);
	index = parm->index;
	err = FUNC14(tn, &index, a, bind);
	if (err < 0)
		return err;
	exists = err;
	if (exists && bind)
		return 0;

	if (!exists) {
		ret = FUNC16(tn, index, est, a,
				     &act_sample_ops, bind, true);
		if (ret) {
			FUNC15(tn, index);
			return ret;
		}
		ret = ACT_P_CREATED;
	} else if (!ovr) {
		FUNC18(*a, bind);
		return -EEXIST;
	}
	err = FUNC11(parm->action, tp, &goto_ch, extack);
	if (err < 0)
		goto release_idr;

	rate = FUNC4(tb[TCA_SAMPLE_RATE]);
	if (!rate) {
		FUNC0(extack, "invalid sample rate");
		err = -EINVAL;
		goto put_chain;
	}
	psample_group_num = FUNC4(tb[TCA_SAMPLE_PSAMPLE_GROUP]);
	psample_group = FUNC6(net, psample_group_num);
	if (!psample_group) {
		err = -ENOMEM;
		goto put_chain;
	}

	s = FUNC19(*a);

	FUNC9(&s->tcf_lock);
	goto_ch = FUNC12(*a, parm->action, goto_ch);
	s->rate = rate;
	s->psample_group_num = psample_group_num;
	FUNC8(s->psample_group, psample_group,
			   FUNC1(&s->tcf_lock));

	if (tb[TCA_SAMPLE_TRUNC_SIZE]) {
		s->truncate = true;
		s->trunc_size = FUNC4(tb[TCA_SAMPLE_TRUNC_SIZE]);
	}
	FUNC10(&s->tcf_lock);

	if (psample_group)
		FUNC7(psample_group);
	if (goto_ch)
		FUNC13(goto_ch);

	if (ret == ACT_P_CREATED)
		FUNC17(tn, *a);
	return ret;
put_chain:
	if (goto_ch)
		FUNC13(goto_ch);
release_idr:
	FUNC18(*a, bind);
	return err;
}