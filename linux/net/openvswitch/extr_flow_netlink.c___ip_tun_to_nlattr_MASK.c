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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_6__ {TYPE_2__ ipv6; TYPE_1__ ipv4; } ;
struct ip_tunnel_key {int tun_flags; scalar_t__ tp_dst; scalar_t__ tp_src; scalar_t__ ttl; scalar_t__ tos; TYPE_3__ u; int /*<<< orphan*/  tun_id; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EMSGSIZE ; 
 int IP_TUNNEL_INFO_BRIDGE ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_CSUM ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_ERSPAN_OPTS ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_GENEVE_OPTS ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_ID ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_IPV4_DST ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_IPV4_INFO_BRIDGE ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_IPV4_SRC ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_IPV6_DST ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_IPV6_SRC ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_OAM ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_PAD ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_TOS ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_TP_DST ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_TP_SRC ; 
 int /*<<< orphan*/  OVS_TUNNEL_KEY_ATTR_TTL ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_DONT_FRAGMENT ; 
 int TUNNEL_ERSPAN_OPT ; 
 int TUNNEL_GENEVE_OPT ; 
 int TUNNEL_KEY ; 
 int TUNNEL_OAM ; 
 int TUNNEL_VXLAN_OPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,void const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (struct sk_buff*,void const*,int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb,
			      const struct ip_tunnel_key *output,
			      const void *tun_opts, int swkey_tun_opts_len,
			      unsigned short tun_proto, u8 mode)
{
	if (output->tun_flags & TUNNEL_KEY &&
	    FUNC3(skb, OVS_TUNNEL_KEY_ATTR_ID, output->tun_id,
			 OVS_TUNNEL_KEY_ATTR_PAD))
		return -EMSGSIZE;

	if (mode & IP_TUNNEL_INFO_BRIDGE)
		return FUNC4(skb, OVS_TUNNEL_KEY_ATTR_IPV4_INFO_BRIDGE)
		       ? -EMSGSIZE : 0;

	switch (tun_proto) {
	case AF_INET:
		if (output->u.ipv4.src &&
		    FUNC6(skb, OVS_TUNNEL_KEY_ATTR_IPV4_SRC,
				    output->u.ipv4.src))
			return -EMSGSIZE;
		if (output->u.ipv4.dst &&
		    FUNC6(skb, OVS_TUNNEL_KEY_ATTR_IPV4_DST,
				    output->u.ipv4.dst))
			return -EMSGSIZE;
		break;
	case AF_INET6:
		if (!FUNC0(&output->u.ipv6.src) &&
		    FUNC5(skb, OVS_TUNNEL_KEY_ATTR_IPV6_SRC,
				     &output->u.ipv6.src))
			return -EMSGSIZE;
		if (!FUNC0(&output->u.ipv6.dst) &&
		    FUNC5(skb, OVS_TUNNEL_KEY_ATTR_IPV6_DST,
				     &output->u.ipv6.dst))
			return -EMSGSIZE;
		break;
	}
	if (output->tos &&
	    FUNC7(skb, OVS_TUNNEL_KEY_ATTR_TOS, output->tos))
		return -EMSGSIZE;
	if (FUNC7(skb, OVS_TUNNEL_KEY_ATTR_TTL, output->ttl))
		return -EMSGSIZE;
	if ((output->tun_flags & TUNNEL_DONT_FRAGMENT) &&
	    FUNC4(skb, OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT))
		return -EMSGSIZE;
	if ((output->tun_flags & TUNNEL_CSUM) &&
	    FUNC4(skb, OVS_TUNNEL_KEY_ATTR_CSUM))
		return -EMSGSIZE;
	if (output->tp_src &&
	    FUNC2(skb, OVS_TUNNEL_KEY_ATTR_TP_SRC, output->tp_src))
		return -EMSGSIZE;
	if (output->tp_dst &&
	    FUNC2(skb, OVS_TUNNEL_KEY_ATTR_TP_DST, output->tp_dst))
		return -EMSGSIZE;
	if ((output->tun_flags & TUNNEL_OAM) &&
	    FUNC4(skb, OVS_TUNNEL_KEY_ATTR_OAM))
		return -EMSGSIZE;
	if (swkey_tun_opts_len) {
		if (output->tun_flags & TUNNEL_GENEVE_OPT &&
		    FUNC1(skb, OVS_TUNNEL_KEY_ATTR_GENEVE_OPTS,
			    swkey_tun_opts_len, tun_opts))
			return -EMSGSIZE;
		else if (output->tun_flags & TUNNEL_VXLAN_OPT &&
			 FUNC8(skb, tun_opts, swkey_tun_opts_len))
			return -EMSGSIZE;
		else if (output->tun_flags & TUNNEL_ERSPAN_OPT &&
			 FUNC1(skb, OVS_TUNNEL_KEY_ATTR_ERSPAN_OPTS,
				 swkey_tun_opts_len, tun_opts))
			return -EMSGSIZE;
	}

	return 0;
}