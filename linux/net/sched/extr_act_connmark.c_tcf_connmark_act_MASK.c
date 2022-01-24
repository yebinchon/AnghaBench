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
struct tcf_result {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  overlimits; } ;
struct tcf_connmark_info {int tcf_action; int /*<<< orphan*/  tcf_lock; TYPE_1__ tcf_qstats; int /*<<< orphan*/  net; int /*<<< orphan*/  zone; int /*<<< orphan*/  tcf_bstats; int /*<<< orphan*/  tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {scalar_t__ protocol; int len; int /*<<< orphan*/  mark; } ;
struct nf_conntrack_zone {int /*<<< orphan*/  dir; int /*<<< orphan*/  id; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  mark; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int NFPROTO_IPV4 ; 
 int NFPROTO_IPV6 ; 
 int /*<<< orphan*/  NF_CT_DEFAULT_ZONE_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC2 (int /*<<< orphan*/ ,struct nf_conntrack_zone*,struct nf_conntrack_tuple*) ; 
 struct nf_conn* FUNC3 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 struct nf_conn* FUNC6 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct tcf_connmark_info* FUNC11 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, const struct tc_action *a,
			    struct tcf_result *res)
{
	const struct nf_conntrack_tuple_hash *thash;
	struct nf_conntrack_tuple tuple;
	enum ip_conntrack_info ctinfo;
	struct tcf_connmark_info *ca = FUNC11(a);
	struct nf_conntrack_zone zone;
	struct nf_conn *c;
	int proto;

	FUNC8(&ca->tcf_lock);
	FUNC10(&ca->tcf_tm);
	FUNC0(&ca->tcf_bstats, skb);

	if (skb->protocol == FUNC1(ETH_P_IP)) {
		if (skb->len < sizeof(struct iphdr))
			goto out;

		proto = NFPROTO_IPV4;
	} else if (skb->protocol == FUNC1(ETH_P_IPV6)) {
		if (skb->len < sizeof(struct ipv6hdr))
			goto out;

		proto = NFPROTO_IPV6;
	} else {
		goto out;
	}

	c = FUNC3(skb, &ctinfo);
	if (c) {
		skb->mark = c->mark;
		/* using overlimits stats to count how many packets marked */
		ca->tcf_qstats.overlimits++;
		goto out;
	}

	if (!FUNC4(skb, FUNC7(skb),
			       proto, ca->net, &tuple))
		goto out;

	zone.id = ca->zone;
	zone.dir = NF_CT_DEFAULT_ZONE_DIR;

	thash = FUNC2(ca->net, &zone, &tuple);
	if (!thash)
		goto out;

	c = FUNC6(thash);
	/* using overlimits stats to count how many packets marked */
	ca->tcf_qstats.overlimits++;
	skb->mark = c->mark;
	FUNC5(c);

out:
	FUNC9(&ca->tcf_lock);
	return ca->tcf_action;
}