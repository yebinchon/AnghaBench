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
struct tcf_ct_params {int zone; int ct_action; int mark; int* labels; struct nf_conn* tmpl; int /*<<< orphan*/ * labels_mask; int /*<<< orphan*/  mark_mask; } ;
struct tc_ct_action_net {int /*<<< orphan*/  labels; } ;
struct tc_ct {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  ct_general; int /*<<< orphan*/  status; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_LABELS ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_MARK ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_ZONES ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPS_CONFIRMED_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_CT_DEFAULT_ZONE_DIR ; 
 int NF_CT_DEFAULT_ZONE_ID ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_CT_ACTION ; 
 int TCA_CT_ACT_CLEAR ; 
 size_t TCA_CT_LABELS ; 
 int /*<<< orphan*/  TCA_CT_LABELS_MASK ; 
 size_t TCA_CT_MARK ; 
 int /*<<< orphan*/  TCA_CT_MARK_MASK ; 
 int /*<<< orphan*/  TCA_CT_UNSPEC ; 
 size_t TCA_CT_ZONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ct_net_id ; 
 struct tc_ct_action_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nf_conn* FUNC5 (struct net*,struct nf_conntrack_zone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conntrack_zone*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tcf_ct_params*,struct tc_ct*,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr**,int*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct net *net,
			      struct tcf_ct_params *p,
			      struct tc_ct *parm,
			      struct nlattr **tb,
			      struct netlink_ext_ack *extack)
{
	struct tc_ct_action_net *tn = FUNC3(net, ct_net_id);
	struct nf_conntrack_zone zone;
	struct nf_conn *tmpl;
	int err;

	p->zone = NF_CT_DEFAULT_ZONE_ID;

	FUNC8(tb,
			   &p->ct_action, TCA_CT_ACTION,
			   NULL, TCA_CT_UNSPEC,
			   sizeof(p->ct_action));

	if (p->ct_action & TCA_CT_ACT_CLEAR)
		return 0;

	err = FUNC7(p, parm, tb, extack);
	if (err)
		return err;

	if (tb[TCA_CT_MARK]) {
		if (!FUNC0(CONFIG_NF_CONNTRACK_MARK)) {
			FUNC1(extack, "Conntrack mark isn't enabled.");
			return -EOPNOTSUPP;
		}
		FUNC8(tb,
				   &p->mark, TCA_CT_MARK,
				   &p->mark_mask, TCA_CT_MARK_MASK,
				   sizeof(p->mark));
	}

	if (tb[TCA_CT_LABELS]) {
		if (!FUNC0(CONFIG_NF_CONNTRACK_LABELS)) {
			FUNC1(extack, "Conntrack labels isn't enabled.");
			return -EOPNOTSUPP;
		}

		if (!tn->labels) {
			FUNC1(extack, "Failed to set connlabel length");
			return -EOPNOTSUPP;
		}
		FUNC8(tb,
				   p->labels, TCA_CT_LABELS,
				   p->labels_mask, TCA_CT_LABELS_MASK,
				   sizeof(p->labels));
	}

	if (tb[TCA_CT_ZONE]) {
		if (!FUNC0(CONFIG_NF_CONNTRACK_ZONES)) {
			FUNC1(extack, "Conntrack zones isn't enabled.");
			return -EOPNOTSUPP;
		}

		FUNC8(tb,
				   &p->zone, TCA_CT_ZONE,
				   NULL, TCA_CT_UNSPEC,
				   sizeof(p->zone));
	}

	if (p->zone == NF_CT_DEFAULT_ZONE_ID)
		return 0;

	FUNC6(&zone, p->zone, NF_CT_DEFAULT_ZONE_DIR, 0);
	tmpl = FUNC5(net, &zone, GFP_KERNEL);
	if (!tmpl) {
		FUNC1(extack, "Failed to allocate conntrack template");
		return -ENOMEM;
	}
	FUNC2(IPS_CONFIRMED_BIT, &tmpl->status);
	FUNC4(&tmpl->ct_general);
	p->tmpl = tmpl;

	return 0;
}