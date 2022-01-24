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
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int hard_header_len; } ;
struct neighbour {struct net_device* dev; } ;
struct dn_skb_cb {int rt_flags; int hops; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct dn_short_packet {int msgflg; int forward; int /*<<< orphan*/  srcnode; int /*<<< orphan*/  dstnode; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int DN_RT_F_RQR ; 
 int DN_RT_F_RTS ; 
 int DN_RT_PKT_SHORT ; 
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  NFPROTO_DECNET ; 
 int /*<<< orphan*/  NF_DN_POST_ROUTING ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  dn_neigh_output_packet ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct sk_buff*) ; 
 unsigned char* FUNC8 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct neighbour *neigh, struct sock *sk,
			   struct sk_buff *skb)
{
	struct net_device *dev = neigh->dev;
	int headroom = dev->hard_header_len + sizeof(struct dn_short_packet) + 2;
	struct dn_short_packet *sp;
	unsigned char *data;
	struct dn_skb_cb *cb = FUNC0(skb);


	if (FUNC7(skb) < headroom) {
		struct sk_buff *skb2 = FUNC9(skb, headroom);
		if (skb2 == NULL) {
			FUNC5("dn_short_output: no memory\n");
			FUNC4(skb);
			return -ENOBUFS;
		}
		FUNC2(skb);
		skb = skb2;
		FUNC6("dn_short_output: Increasing headroom\n");
	}

	data = FUNC8(skb, sizeof(struct dn_short_packet) + 2);
	*((__le16 *)data) = FUNC3(skb->len - 2);
	sp = (struct dn_short_packet *)(data+2);

	sp->msgflg     = DN_RT_PKT_SHORT|(cb->rt_flags&(DN_RT_F_RQR|DN_RT_F_RTS));
	sp->dstnode    = cb->dst;
	sp->srcnode    = cb->src;
	sp->forward    = cb->hops & 0x3f;

	FUNC10(skb);

	return FUNC1(NFPROTO_DECNET, NF_DN_POST_ROUTING,
		       &init_net, sk, skb, NULL, neigh->dev,
		       dn_neigh_output_packet);
}