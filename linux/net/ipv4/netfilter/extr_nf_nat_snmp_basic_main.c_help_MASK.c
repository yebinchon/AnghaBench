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
struct udphdr {scalar_t__ source; scalar_t__ dest; int /*<<< orphan*/  len; } ;
struct sk_buff {int len; } ;
struct nf_conn {int status; } ;
struct iphdr {int ihl; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IPS_NAT_MASK ; 
 int IP_CT_DIR_ORIGINAL ; 
 int IP_CT_DIR_REPLY ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int /*<<< orphan*/  SNMP_PORT ; 
 int /*<<< orphan*/  SNMP_TRAP_PORT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nf_conn*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  snmp_lock ; 
 unsigned int FUNC6 (struct nf_conn*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, unsigned int protoff,
		struct nf_conn *ct,
		enum ip_conntrack_info ctinfo)
{
	int dir = FUNC0(ctinfo);
	unsigned int ret;
	const struct iphdr *iph = FUNC2(skb);
	const struct udphdr *udph = (struct udphdr *)((__be32 *)iph + iph->ihl);

	/* SNMP replies and originating SNMP traps get mangled */
	if (udph->source == FUNC1(SNMP_PORT) && dir != IP_CT_DIR_REPLY)
		return NF_ACCEPT;
	if (udph->dest == FUNC1(SNMP_TRAP_PORT) && dir != IP_CT_DIR_ORIGINAL)
		return NF_ACCEPT;

	/* No NAT? */
	if (!(ct->status & IPS_NAT_MASK))
		return NF_ACCEPT;

	/* Make sure the packet length is ok.  So far, we were only guaranteed
	 * to have a valid length IP header plus 8 bytes, which means we have
	 * enough room for a UDP header.  Just verify the UDP length field so we
	 * can mess around with the payload.
	 */
	if (FUNC4(udph->len) != skb->len - (iph->ihl << 2)) {
		FUNC3(skb, ct, "dropping malformed packet\n");
		return NF_DROP;
	}

	if (FUNC5(skb, skb->len)) {
		FUNC3(skb, ct, "cannot mangle packet");
		return NF_DROP;
	}

	FUNC7(&snmp_lock);
	ret = FUNC6(ct, dir, skb);
	FUNC8(&snmp_lock);
	return ret;
}