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
typedef  int /*<<< orphan*/  u_int8_t ;
struct xt_ipvs_mtinfo {int bitmask; int invert; scalar_t__ l4proto; scalar_t__ vport; scalar_t__ vportctl; int fwd_method; int /*<<< orphan*/  vmask; int /*<<< orphan*/  vaddr; } ;
struct xt_action_param {struct xt_ipvs_mtinfo* matchinfo; } ;
struct sk_buff {int ipvs_property; } ;
struct nf_conn {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_protocol {struct ip_vs_conn* (* conn_out_get ) (struct netns_ipvs*,int /*<<< orphan*/  const,struct sk_buff const*,struct ip_vs_iphdr*) ;} ;
struct ip_vs_iphdr {scalar_t__ protocol; } ;
struct ip_vs_conn {scalar_t__ vport; int flags; int /*<<< orphan*/  vaddr; TYPE_1__* control; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_2__ {scalar_t__ vport; } ;

/* Variables and functions */
 int IP_CT_IS_REPLY ; 
 int IP_VS_CONN_F_FWD_MASK ; 
 int XT_IPVS_DIR ; 
 int XT_IPVS_IPVS_PROPERTY ; 
 int XT_IPVS_METHOD ; 
 int XT_IPVS_PROTO ; 
 int XT_IPVS_VADDR ; 
 int XT_IPVS_VPORT ; 
 int XT_IPVS_VPORTCTL ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,struct sk_buff const*,int,struct ip_vs_iphdr*) ; 
 struct ip_vs_protocol* FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 struct netns_ipvs* FUNC4 (int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC5 (struct sk_buff const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 struct ip_vs_conn* FUNC7 (struct netns_ipvs*,int /*<<< orphan*/  const,struct sk_buff const*,struct ip_vs_iphdr*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC10 (struct xt_action_param*) ; 

__attribute__((used)) static bool
FUNC11(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct xt_ipvs_mtinfo *data = par->matchinfo;
	struct netns_ipvs *ipvs = FUNC4(FUNC10(par));
	/* ipvs_mt_check ensures that family is only NFPROTO_IPV[46]. */
	const u_int8_t family = FUNC9(par);
	struct ip_vs_iphdr iph;
	struct ip_vs_protocol *pp;
	struct ip_vs_conn *cp;
	bool match = true;

	if (data->bitmask == XT_IPVS_IPVS_PROPERTY) {
		match = skb->ipvs_property ^
			!!(data->invert & XT_IPVS_IPVS_PROPERTY);
		goto out;
	}

	/* other flags than XT_IPVS_IPVS_PROPERTY are set */
	if (!skb->ipvs_property) {
		match = false;
		goto out;
	}

	FUNC1(family, skb, true, &iph);

	if (data->bitmask & XT_IPVS_PROTO)
		if ((iph.protocol == data->l4proto) ^
		    !(data->invert & XT_IPVS_PROTO)) {
			match = false;
			goto out;
		}

	pp = FUNC2(iph.protocol);
	if (FUNC8(!pp)) {
		match = false;
		goto out;
	}

	/*
	 * Check if the packet belongs to an existing entry
	 */
	cp = pp->conn_out_get(ipvs, family, skb, &iph);
	if (FUNC8(cp == NULL)) {
		match = false;
		goto out;
	}

	/*
	 * We found a connection, i.e. ct != 0, make sure to call
	 * __ip_vs_conn_put before returning.  In our case jump to out_put_con.
	 */

	if (data->bitmask & XT_IPVS_VPORT)
		if ((cp->vport == data->vport) ^
		    !(data->invert & XT_IPVS_VPORT)) {
			match = false;
			goto out_put_cp;
		}

	if (data->bitmask & XT_IPVS_VPORTCTL)
		if ((cp->control != NULL &&
		     cp->control->vport == data->vportctl) ^
		    !(data->invert & XT_IPVS_VPORTCTL)) {
			match = false;
			goto out_put_cp;
		}

	if (data->bitmask & XT_IPVS_DIR) {
		enum ip_conntrack_info ctinfo;
		struct nf_conn *ct = FUNC5(skb, &ctinfo);

		if (ct == NULL) {
			match = false;
			goto out_put_cp;
		}

		if ((ctinfo >= IP_CT_IS_REPLY) ^
		    !!(data->invert & XT_IPVS_DIR)) {
			match = false;
			goto out_put_cp;
		}
	}

	if (data->bitmask & XT_IPVS_METHOD)
		if (((cp->flags & IP_VS_CONN_F_FWD_MASK) == data->fwd_method) ^
		    !(data->invert & XT_IPVS_METHOD)) {
			match = false;
			goto out_put_cp;
		}

	if (data->bitmask & XT_IPVS_VADDR) {
		if (FUNC3(&cp->vaddr, &data->vaddr,
				    &data->vmask, family) ^
		    !(data->invert & XT_IPVS_VADDR)) {
			match = false;
			goto out_put_cp;
		}
	}

out_put_cp:
	FUNC0(cp);
out:
	FUNC6("match=%d\n", match);
	return match;
}