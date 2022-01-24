#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_6__ {int /*<<< orphan*/  proto; } ;
struct sw_flow_key {TYPE_1__ ip; } ;
struct sw_flow_actions {int dummy; } ;
struct ovs_conntrack_info {TYPE_2__* ct; int /*<<< orphan*/  nf_ct_timeout; scalar_t__* timeout; int /*<<< orphan*/  zone; scalar_t__ family; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  ct_info ;
struct TYPE_8__ {int /*<<< orphan*/  timeout; } ;
struct TYPE_7__ {int /*<<< orphan*/  ct_general; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPS_CONFIRMED_BIT ; 
 scalar_t__ NFPROTO_UNSPEC ; 
 int /*<<< orphan*/  NF_CT_DEFAULT_ZONE_DIR ; 
 int /*<<< orphan*/  NF_CT_DEFAULT_ZONE_ID ; 
 int /*<<< orphan*/  OVS_ACTION_ATTR_CT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ovs_conntrack_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sw_flow_key const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ovs_conntrack_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct net*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_3__* FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ovs_conntrack_info*,char const*,struct sw_flow_key const*,int) ; 
 int FUNC11 (struct sw_flow_actions**,int /*<<< orphan*/ ,struct ovs_conntrack_info*,int,int) ; 
 int FUNC12 (struct nlattr const*,struct ovs_conntrack_info*,char const**,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct net *net, const struct nlattr *attr,
		       const struct sw_flow_key *key,
		       struct sw_flow_actions **sfa,  bool log)
{
	struct ovs_conntrack_info ct_info;
	const char *helper = NULL;
	u16 family;
	int err;

	family = FUNC3(key);
	if (family == NFPROTO_UNSPEC) {
		FUNC0(log, "ct family unspecified");
		return -EINVAL;
	}

	FUNC4(&ct_info, 0, sizeof(ct_info));
	ct_info.family = family;

	FUNC9(&ct_info.zone, NF_CT_DEFAULT_ZONE_ID,
			NF_CT_DEFAULT_ZONE_DIR, 0);

	err = FUNC12(attr, &ct_info, &helper, log);
	if (err)
		return err;

	/* Set up template for tracking connections in specific zones. */
	ct_info.ct = FUNC8(net, &ct_info.zone, GFP_KERNEL);
	if (!ct_info.ct) {
		FUNC0(log, "Failed to allocate conntrack template");
		return -ENOMEM;
	}

	if (ct_info.timeout[0]) {
		if (FUNC6(net, ct_info.ct, family, key->ip.proto,
				      ct_info.timeout))
			FUNC13("Failed to associated timeout "
					    "policy `%s'\n", ct_info.timeout);
		else
			ct_info.nf_ct_timeout = FUNC14(
				FUNC7(ct_info.ct)->timeout);

	}

	if (helper) {
		err = FUNC10(&ct_info, helper, key, log);
		if (err)
			goto err_free_ct;
	}

	err = FUNC11(sfa, OVS_ACTION_ATTR_CT, &ct_info,
				 sizeof(ct_info), log);
	if (err)
		goto err_free_ct;

	FUNC2(IPS_CONFIRMED_BIT, &ct_info.ct->status);
	FUNC5(&ct_info.ct->ct_general);
	return 0;
err_free_ct:
	FUNC1(&ct_info);
	return err;
}