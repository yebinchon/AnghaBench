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
union nf_inet_addr {int /*<<< orphan*/  ip6; int /*<<< orphan*/  ip; } ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct nf_hook_state {scalar_t__ pf; int /*<<< orphan*/  net; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {TYPE_3__* tuplehash; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_4__ {union nf_inet_addr u3; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct TYPE_6__ {TYPE_2__ tuple; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int IP_CT_DIR_REPLY ; 
 scalar_t__ IP_CT_IS_REPLY ; 
 int IP_CT_RELATED ; 
 int NF_ACCEPT ; 
 int FUNC0 (struct nf_conntrack_tuple_hash const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_tuple_hash* FUNC2 (int /*<<< orphan*/ ,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int,scalar_t__,int /*<<< orphan*/ ,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nf_conn*,int) ; 
 struct nf_conn* FUNC7 (struct nf_conntrack_tuple_hash const*) ; 
 struct nf_conntrack_zone* FUNC8 (struct nf_conn*,struct sk_buff*,struct nf_conntrack_zone*) ; 
 int /*<<< orphan*/  FUNC9 (union nf_inet_addr*,union nf_inet_addr*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

int FUNC12(struct nf_conn *tmpl, struct sk_buff *skb,
			    unsigned int dataoff,
			    const struct nf_hook_state *state,
			    u8 l4proto, union nf_inet_addr *outer_daddr)
{
	struct nf_conntrack_tuple innertuple, origtuple;
	const struct nf_conntrack_tuple_hash *h;
	const struct nf_conntrack_zone *zone;
	enum ip_conntrack_info ctinfo;
	struct nf_conntrack_zone tmp;
	union nf_inet_addr *ct_daddr;
	enum ip_conntrack_dir dir;
	struct nf_conn *ct;

	FUNC1(FUNC11(skb));
	zone = FUNC8(tmpl, skb, &tmp);

	/* Are they talking about one of our connections? */
	if (!FUNC3(skb, dataoff,
			       state->pf, state->net, &origtuple))
		return -NF_ACCEPT;

	/* Ordinarily, we'd expect the inverted tupleproto, but it's
	   been preserved inside the ICMP. */
	if (!FUNC4(&innertuple, &origtuple))
		return -NF_ACCEPT;

	h = FUNC2(state->net, zone, &innertuple);
	if (!h)
		return -NF_ACCEPT;

	/* Consider: A -> T (=This machine) -> B
	 *   Conntrack entry will look like this:
	 *      Original:  A->B
	 *      Reply:     B->T (SNAT case) OR A
	 *
	 * When this function runs, we got packet that looks like this:
	 * iphdr|icmphdr|inner_iphdr|l4header (tcp, udp, ..).
	 *
	 * Above nf_conntrack_find_get() makes lookup based on inner_hdr,
	 * so we should expect that destination of the found connection
	 * matches outer header destination address.
	 *
	 * In above example, we can consider these two cases:
	 *  1. Error coming in reply direction from B or M (middle box) to
	 *     T (SNAT case) or A.
	 *     Inner saddr will be B, dst will be T or A.
	 *     The found conntrack will be reply tuple (B->T/A).
	 *  2. Error coming in original direction from A or M to B.
	 *     Inner saddr will be A, inner daddr will be B.
	 *     The found conntrack will be original tuple (A->B).
	 *
	 * In both cases, conntrack[dir].dst == inner.dst.
	 *
	 * A bogus packet could look like this:
	 *   Inner: B->T
	 *   Outer: B->X (other machine reachable by T).
	 *
	 * In this case, lookup yields connection A->B and will
	 * set packet from B->X as *RELATED*, even though no connection
	 * from X was ever seen.
	 */
	ct = FUNC7(h);
	dir = FUNC0(h);
	ct_daddr = &ct->tuplehash[dir].tuple.dst.u3;
	if (!FUNC9(outer_daddr, ct_daddr)) {
		if (state->pf == AF_INET) {
			FUNC10(skb, state->net, state->pf,
					       l4proto,
					       "outer daddr %pI4 != inner %pI4",
					       &outer_daddr->ip, &ct_daddr->ip);
		} else if (state->pf == AF_INET6) {
			FUNC10(skb, state->net, state->pf,
					       l4proto,
					       "outer daddr %pI6 != inner %pI6",
					       &outer_daddr->ip6, &ct_daddr->ip6);
		}
		FUNC5(ct);
		return -NF_ACCEPT;
	}

	ctinfo = IP_CT_RELATED;
	if (dir == IP_CT_DIR_REPLY)
		ctinfo += IP_CT_IS_REPLY;

	/* Update skb to refer to this connection */
	FUNC6(skb, ct, ctinfo);
	return NF_ACCEPT;
}