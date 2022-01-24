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
struct tnl_ptk_info {int flags; int /*<<< orphan*/  key; int /*<<< orphan*/  proto; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct metadata_dst {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {scalar_t__ collect_md; TYPE_2__* dev; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int __be16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_NONE ; 
 int PACKET_NEXT ; 
 int PACKET_RCVD ; 
 int PACKET_REJECT ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_KEY ; 
 scalar_t__ FUNC0 (struct sk_buff*,int,int /*<<< orphan*/ ,int,int) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 struct metadata_dst* FUNC2 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC3 (struct ip_tunnel_net*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_tunnel*,struct sk_buff*,struct tnl_ptk_info const*,struct metadata_dst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  log_ecn_error ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, const struct tnl_ptk_info *tpi,
		       struct ip_tunnel_net *itn, int hdr_len, bool raw_proto)
{
	struct metadata_dst *tun_dst = NULL;
	const struct iphdr *iph;
	struct ip_tunnel *tunnel;

	iph = FUNC1(skb);
	tunnel = FUNC3(itn, skb->dev->ifindex, tpi->flags,
				  iph->saddr, iph->daddr, tpi->key);

	if (tunnel) {
		if (FUNC0(skb, hdr_len, tpi->proto,
					   raw_proto, false) < 0)
			goto drop;

		if (tunnel->dev->type != ARPHRD_NONE)
			FUNC7(skb);
		else
			FUNC8(skb);
		if (tunnel->collect_md) {
			__be16 flags;
			__be64 tun_id;

			flags = tpi->flags & (TUNNEL_CSUM | TUNNEL_KEY);
			tun_id = FUNC5(tpi->key);
			tun_dst = FUNC2(skb, flags, tun_id, 0);
			if (!tun_dst)
				return PACKET_REJECT;
		}

		FUNC4(tunnel, skb, tpi, tun_dst, log_ecn_error);
		return PACKET_RCVD;
	}
	return PACKET_NEXT;

drop:
	FUNC6(skb);
	return PACKET_RCVD;
}