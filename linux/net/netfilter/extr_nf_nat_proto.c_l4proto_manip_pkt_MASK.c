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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;

/* Variables and functions */
#define  IPPROTO_DCCP 135 
#define  IPPROTO_GRE 134 
#define  IPPROTO_ICMP 133 
#define  IPPROTO_ICMPV6 132 
#define  IPPROTO_SCTP 131 
#define  IPPROTO_TCP 130 
#define  IPPROTO_UDP 129 
#define  IPPROTO_UDPLITE 128 
 int FUNC0 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 
 int FUNC1 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 
 int FUNC2 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 
 int FUNC3 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 
 int FUNC4 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 
 int FUNC5 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 
 int FUNC6 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 
 int FUNC7 (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ; 

__attribute__((used)) static bool FUNC8(struct sk_buff *skb,
			      unsigned int iphdroff, unsigned int hdroff,
			      const struct nf_conntrack_tuple *tuple,
			      enum nf_nat_manip_type maniptype)
{
	switch (tuple->dst.protonum) {
	case IPPROTO_TCP:
		return FUNC5(skb, iphdroff, hdroff,
				     tuple, maniptype);
	case IPPROTO_UDP:
		return FUNC6(skb, iphdroff, hdroff,
				     tuple, maniptype);
	case IPPROTO_UDPLITE:
		return FUNC7(skb, iphdroff, hdroff,
					 tuple, maniptype);
	case IPPROTO_SCTP:
		return FUNC4(skb, iphdroff, hdroff,
				      tuple, maniptype);
	case IPPROTO_ICMP:
		return FUNC2(skb, iphdroff, hdroff,
				      tuple, maniptype);
	case IPPROTO_ICMPV6:
		return FUNC3(skb, iphdroff, hdroff,
					tuple, maniptype);
	case IPPROTO_DCCP:
		return FUNC0(skb, iphdroff, hdroff,
				      tuple, maniptype);
	case IPPROTO_GRE:
		return FUNC1(skb, iphdroff, hdroff,
				     tuple, maniptype);
	}

	/* If we don't know protocol -- no error, pass it unmodified. */
	return true;
}