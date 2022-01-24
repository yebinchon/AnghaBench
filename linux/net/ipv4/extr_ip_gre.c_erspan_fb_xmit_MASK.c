#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ protocol; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int mtu; int hard_header_len; TYPE_2__ stats; int /*<<< orphan*/  needed_headroom; } ;
struct ip_tunnel_key {int tun_flags; int /*<<< orphan*/  tun_id; } ;
struct ip_tunnel_info {int mode; int options_len; struct ip_tunnel_key key; } ;
struct ip_tunnel {int /*<<< orphan*/  o_seqno; } ;
struct TYPE_10__ {int /*<<< orphan*/  dir; } ;
struct TYPE_6__ {TYPE_5__ md2; int /*<<< orphan*/  index; } ;
struct erspan_metadata {int version; TYPE_1__ u; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_9__ {int /*<<< orphan*/  tot_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  payload_len; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  ETH_P_ERSPAN ; 
 int /*<<< orphan*/  ETH_P_ERSPAN2 ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 int IP_TUNNEL_INFO_TX ; 
 int TUNNEL_ERSPAN_OPT ; 
 int /*<<< orphan*/  TUNNEL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct ip_tunnel_info*) ; 
 struct erspan_metadata* FUNC11 (struct ip_tunnel_info*) ; 
 TYPE_3__* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct ip_tunnel* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 scalar_t__ FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct sk_buff*) ; 
 int FUNC20 (struct sk_buff*) ; 
 int FUNC21 (struct sk_buff*) ; 
 struct ip_tunnel_info* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int) ; 

__attribute__((used)) static void FUNC25(struct sk_buff *skb, struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC14(dev);
	struct ip_tunnel_info *tun_info;
	const struct ip_tunnel_key *key;
	struct erspan_metadata *md;
	bool truncate = false;
	__be16 proto;
	int tunnel_hlen;
	int version;
	int nhoff;
	int thoff;

	tun_info = FUNC22(skb);
	if (FUNC24(!tun_info || !(tun_info->mode & IP_TUNNEL_INFO_TX) ||
		     FUNC10(tun_info) != AF_INET))
		goto err_free_skb;

	key = &tun_info->key;
	if (!(tun_info->key.tun_flags & TUNNEL_ERSPAN_OPT))
		goto err_free_skb;
	if (tun_info->options_len < sizeof(*md))
		goto err_free_skb;
	md = FUNC11(tun_info);

	/* ERSPAN has fixed 8 byte GRE header */
	version = md->version;
	tunnel_hlen = 8 + FUNC2(version);

	if (FUNC18(skb, dev->needed_headroom))
		goto err_free_skb;

	if (FUNC5(skb, false))
		goto err_free_skb;

	if (skb->len > dev->mtu + dev->hard_header_len) {
		FUNC17(skb, dev->mtu + dev->hard_header_len);
		truncate = true;
	}

	nhoff = FUNC20(skb) - FUNC19(skb);
	if (skb->protocol == FUNC7(ETH_P_IP) &&
	    (FUNC16(FUNC8(skb)->tot_len) > skb->len - nhoff))
		truncate = true;

	thoff = FUNC21(skb) - FUNC19(skb);
	if (skb->protocol == FUNC7(ETH_P_IPV6) &&
	    (FUNC16(FUNC12(skb)->payload_len) > skb->len - thoff))
		truncate = true;

	if (version == 1) {
		FUNC0(skb, FUNC15(FUNC23(key->tun_id)),
				    FUNC15(md->u.index), truncate, true);
		proto = FUNC7(ETH_P_ERSPAN);
	} else if (version == 2) {
		FUNC1(skb,
				       FUNC15(FUNC23(key->tun_id)),
				       md->u.md2.dir,
				       FUNC3(&md->u.md2),
				       truncate, true);
		proto = FUNC7(ETH_P_ERSPAN2);
	} else {
		goto err_free_skb;
	}

	FUNC4(skb, 8, TUNNEL_SEQ,
			 proto, 0, FUNC6(tunnel->o_seqno++));

	FUNC9(skb, dev, IPPROTO_GRE, tunnel_hlen);

	return;

err_free_skb:
	FUNC13(skb);
	dev->stats.tx_dropped++;
}