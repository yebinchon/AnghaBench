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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int ttl; int tos; int protocol; int frag_off; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; int /*<<< orphan*/  link; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; int /*<<< orphan*/  type; } ;
struct ip_tunnel {scalar_t__ collect_md; TYPE_2__ encap; int /*<<< orphan*/  fwmark; struct ip_tunnel_parm parms; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_IPTUN_COLLECT_METADATA ; 
 int /*<<< orphan*/  IFLA_IPTUN_ENCAP_DPORT ; 
 int /*<<< orphan*/  IFLA_IPTUN_ENCAP_FLAGS ; 
 int /*<<< orphan*/  IFLA_IPTUN_ENCAP_SPORT ; 
 int /*<<< orphan*/  IFLA_IPTUN_ENCAP_TYPE ; 
 int /*<<< orphan*/  IFLA_IPTUN_FWMARK ; 
 int /*<<< orphan*/  IFLA_IPTUN_LINK ; 
 int /*<<< orphan*/  IFLA_IPTUN_LOCAL ; 
 int /*<<< orphan*/  IFLA_IPTUN_PMTUDISC ; 
 int /*<<< orphan*/  IFLA_IPTUN_PROTO ; 
 int /*<<< orphan*/  IFLA_IPTUN_REMOTE ; 
 int /*<<< orphan*/  IFLA_IPTUN_TOS ; 
 int /*<<< orphan*/  IFLA_IPTUN_TTL ; 
 int /*<<< orphan*/  IP_DF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC1 (struct net_device const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, const struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC1(dev);
	struct ip_tunnel_parm *parm = &tunnel->parms;

	if (FUNC6(skb, IFLA_IPTUN_LINK, parm->link) ||
	    FUNC4(skb, IFLA_IPTUN_LOCAL, parm->iph.saddr) ||
	    FUNC4(skb, IFLA_IPTUN_REMOTE, parm->iph.daddr) ||
	    FUNC7(skb, IFLA_IPTUN_TTL, parm->iph.ttl) ||
	    FUNC7(skb, IFLA_IPTUN_TOS, parm->iph.tos) ||
	    FUNC7(skb, IFLA_IPTUN_PROTO, parm->iph.protocol) ||
	    FUNC7(skb, IFLA_IPTUN_PMTUDISC,
		       !!(parm->iph.frag_off & FUNC0(IP_DF))) ||
	    FUNC6(skb, IFLA_IPTUN_FWMARK, tunnel->fwmark))
		goto nla_put_failure;

	if (FUNC5(skb, IFLA_IPTUN_ENCAP_TYPE,
			tunnel->encap.type) ||
	    FUNC2(skb, IFLA_IPTUN_ENCAP_SPORT,
			 tunnel->encap.sport) ||
	    FUNC2(skb, IFLA_IPTUN_ENCAP_DPORT,
			 tunnel->encap.dport) ||
	    FUNC5(skb, IFLA_IPTUN_ENCAP_FLAGS,
			tunnel->encap.flags))
		goto nla_put_failure;

	if (tunnel->collect_md)
		if (FUNC3(skb, IFLA_IPTUN_COLLECT_METADATA))
			goto nla_put_failure;
	return 0;

nla_put_failure:
	return -EMSGSIZE;
}