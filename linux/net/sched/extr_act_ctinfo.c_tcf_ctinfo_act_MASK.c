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
struct tcf_result {int dummy; } ;
struct tcf_ctinfo_params {int mode; int dscpstatemask; int /*<<< orphan*/  net; int /*<<< orphan*/  zone; } ;
struct tcf_ctinfo {int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bstats; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  params; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_zone {int /*<<< orphan*/  dir; int /*<<< orphan*/  id; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int mark; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int CTINFO_MODE_CPMARK ; 
 int CTINFO_MODE_DSCP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int NFPROTO_IPV4 ; 
 int NFPROTO_IPV6 ; 
 int /*<<< orphan*/  NF_CT_DEFAULT_ZONE_DIR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC3 (int /*<<< orphan*/ ,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ; 
 struct nf_conn* FUNC4 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int,int,int /*<<< orphan*/ ,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*) ; 
 struct nf_conn* FUNC7 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 struct tcf_ctinfo_params* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct nf_conn*,struct tcf_ctinfo*,struct tcf_ctinfo_params*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct nf_conn*,struct tcf_ctinfo*,struct tcf_ctinfo_params*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct tcf_ctinfo* FUNC15 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, const struct tc_action *a,
			  struct tcf_result *res)
{
	const struct nf_conntrack_tuple_hash *thash = NULL;
	struct tcf_ctinfo *ca = FUNC15(a);
	struct nf_conntrack_tuple tuple;
	struct nf_conntrack_zone zone;
	enum ip_conntrack_info ctinfo;
	struct tcf_ctinfo_params *cp;
	struct nf_conn *ct;
	int proto, wlen;
	int action;

	cp = FUNC9(ca->params);

	FUNC14(&ca->tcf_tm);
	FUNC1(&ca->tcf_bstats, skb);
	action = FUNC0(ca->tcf_action);

	wlen = FUNC10(skb);
	if (FUNC11(skb) == FUNC2(ETH_P_IP)) {
		wlen += sizeof(struct iphdr);
		if (!FUNC8(skb, wlen))
			goto out;

		proto = NFPROTO_IPV4;
	} else if (FUNC11(skb) == FUNC2(ETH_P_IPV6)) {
		wlen += sizeof(struct ipv6hdr);
		if (!FUNC8(skb, wlen))
			goto out;

		proto = NFPROTO_IPV6;
	} else {
		goto out;
	}

	ct = FUNC4(skb, &ctinfo);
	if (!ct) { /* look harder, usually ingress */
		if (!FUNC5(skb, FUNC10(skb),
				       proto, cp->net, &tuple))
			goto out;
		zone.id = cp->zone;
		zone.dir = NF_CT_DEFAULT_ZONE_DIR;

		thash = FUNC3(cp->net, &zone, &tuple);
		if (!thash)
			goto out;

		ct = FUNC7(thash);
	}

	if (cp->mode & CTINFO_MODE_DSCP)
		if (!cp->dscpstatemask || (ct->mark & cp->dscpstatemask))
			FUNC13(ct, ca, cp, skb, wlen, proto);

	if (cp->mode & CTINFO_MODE_CPMARK)
		FUNC12(ct, ca, cp, skb);

	if (thash)
		FUNC6(ct);
out:
	return action;
}