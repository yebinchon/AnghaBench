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
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_conntrack_info {scalar_t__ helper; scalar_t__ nf_ct_timeout; scalar_t__ force; int /*<<< orphan*/  ct; } ;
struct nf_conn_timeout {int /*<<< orphan*/  timeout; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int /*<<< orphan*/  ct_general; int /*<<< orphan*/  ct_net; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  NF_CT_EXT_HELPER ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conn_help* FUNC4 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC5 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC6 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nf_conn_timeout* FUNC8 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC11 (struct net*,struct sw_flow_key const*,struct ovs_conntrack_info const*,struct sk_buff*,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC15(struct net *net,
			    const struct sw_flow_key *key,
			    const struct ovs_conntrack_info *info,
			    struct sk_buff *skb)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct;
	bool ct_executed = true;

	ct = FUNC5(skb, &ctinfo);
	if (!ct)
		ct = FUNC11(net, key, info, skb, &ct_executed);

	if (ct)
		FUNC5(skb, &ctinfo);
	else
		return false;

	if (!FUNC1(net, FUNC14(&ct->ct_net)))
		return false;
	if (!FUNC10(info->ct, FUNC9(ct)))
		return false;
	if (info->helper) {
		struct nf_conn_help *help;

		help = FUNC4(ct, NF_CT_EXT_HELPER);
		if (help && FUNC12(help->helper) != info->helper)
			return false;
	}
	if (info->nf_ct_timeout) {
		struct nf_conn_timeout *timeout_ext;

		timeout_ext = FUNC8(ct);
		if (!timeout_ext || info->nf_ct_timeout !=
		    FUNC13(timeout_ext->timeout))
			return false;
	}
	/* Force conntrack entry direction to the current packet? */
	if (info->force && FUNC0(ctinfo) != IP_CT_DIR_ORIGINAL) {
		/* Delete the conntrack entry if confirmed, else just release
		 * the reference.
		 */
		if (FUNC6(ct))
			FUNC3(ct, 0, 0);

		FUNC2(&ct->ct_general);
		FUNC7(skb, NULL, 0);
		return false;
	}

	return ct_executed;
}