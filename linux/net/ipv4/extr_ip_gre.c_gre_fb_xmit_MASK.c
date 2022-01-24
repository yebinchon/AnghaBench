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
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  needed_headroom; } ;
struct ip_tunnel_key {int tun_flags; int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {int mode; struct ip_tunnel_key key; } ;
struct ip_tunnel {int /*<<< orphan*/  o_seqno; } ;
typedef  int __be16 ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 int IP_TUNNEL_INFO_TX ; 
 int TUNNEL_CSUM ; 
 int TUNNEL_KEY ; 
 int TUNNEL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct ip_tunnel* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel_info* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct sk_buff *skb, struct net_device *dev,
			__be16 proto)
{
	struct ip_tunnel *tunnel = FUNC7(dev);
	struct ip_tunnel_info *tun_info;
	const struct ip_tunnel_key *key;
	int tunnel_hlen;
	__be16 flags;

	tun_info = FUNC9(skb);
	if (FUNC11(!tun_info || !(tun_info->mode & IP_TUNNEL_INFO_TX) ||
		     FUNC5(tun_info) != AF_INET))
		goto err_free_skb;

	key = &tun_info->key;
	tunnel_hlen = FUNC1(key->tun_flags);

	if (FUNC8(skb, dev->needed_headroom))
		goto err_free_skb;

	/* Push Tunnel header. */
	if (FUNC2(skb, !!(tun_info->key.tun_flags & TUNNEL_CSUM)))
		goto err_free_skb;

	flags = tun_info->key.tun_flags &
		(TUNNEL_CSUM | TUNNEL_KEY | TUNNEL_SEQ);
	FUNC0(skb, tunnel_hlen, flags, proto,
			 FUNC10(tun_info->key.tun_id),
			 (flags & TUNNEL_SEQ) ? FUNC3(tunnel->o_seqno++) : 0);

	FUNC4(skb, dev, IPPROTO_GRE, tunnel_hlen);

	return;

err_free_skb:
	FUNC6(skb);
	dev->stats.tx_dropped++;
}