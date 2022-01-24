#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  protonum; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; } ;
struct nf_conn {int status; TYPE_1__* tuplehash; } ;
struct iphdr {int dummy; } ;
struct icmphdr {scalar_t__ type; scalar_t__ checksum; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_3__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ ICMP_REDIRECT ; 
 int /*<<< orphan*/  IPPROTO_ICMP ; 
 unsigned long IPS_DST_NAT ; 
 int IPS_NAT_DONE_MASK ; 
 int IPS_NAT_MASK ; 
 unsigned long IPS_SRC_NAT ; 
 int IP_CT_DIR_REPLY ; 
 int IP_CT_RELATED ; 
 int IP_CT_RELATED_REPLY ; 
 int NF_NAT_MANIP_SRC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int,struct nf_conntrack_tuple*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,unsigned int) ; 

int FUNC10(struct sk_buff *skb,
				  struct nf_conn *ct,
				  enum ip_conntrack_info ctinfo,
				  unsigned int hooknum)
{
	struct {
		struct icmphdr	icmp;
		struct iphdr	ip;
	} *inside;
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	enum nf_nat_manip_type manip = FUNC1(hooknum);
	unsigned int hdrlen = FUNC4(skb);
	struct nf_conntrack_tuple target;
	unsigned long statusbit;

	FUNC2(ctinfo != IP_CT_RELATED && ctinfo != IP_CT_RELATED_REPLY);

	if (FUNC9(skb, hdrlen + sizeof(*inside)))
		return 0;
	if (FUNC6(skb, hooknum, hdrlen, IPPROTO_ICMP))
		return 0;

	inside = (void *)skb->data + hdrlen;
	if (inside->icmp.type == ICMP_REDIRECT) {
		if ((ct->status & IPS_NAT_DONE_MASK) != IPS_NAT_DONE_MASK)
			return 0;
		if (ct->status & IPS_NAT_MASK)
			return 0;
	}

	if (manip == NF_NAT_MANIP_SRC)
		statusbit = IPS_SRC_NAT;
	else
		statusbit = IPS_DST_NAT;

	/* Invert if this is reply direction */
	if (dir == IP_CT_DIR_REPLY)
		statusbit ^= IPS_NAT_MASK;

	if (!(ct->status & statusbit))
		return 1;

	if (!FUNC7(skb, hdrlen + sizeof(inside->icmp),
				   &ct->tuplehash[!dir].tuple, !manip))
		return 0;

	if (skb->ip_summed != CHECKSUM_PARTIAL) {
		/* Reloading "inside" here since manip_pkt may reallocate */
		inside = (void *)skb->data + hdrlen;
		inside->icmp.checksum = 0;
		inside->icmp.checksum =
			FUNC3(FUNC8(skb, hdrlen,
					       skb->len - hdrlen, 0));
	}

	/* Change outer to look like the reply to an incoming packet */
	FUNC5(&target, &ct->tuplehash[!dir].tuple);
	target.dst.protonum = IPPROTO_ICMP;
	if (!FUNC7(skb, 0, &target, manip))
		return 0;

	return 1;
}