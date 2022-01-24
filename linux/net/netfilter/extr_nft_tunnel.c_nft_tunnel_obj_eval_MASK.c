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
struct sk_buff {int dummy; } ;
struct nft_tunnel_obj {scalar_t__ md; } ;
struct nft_regs {int dummy; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_object {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 struct nft_tunnel_obj* FUNC1 (struct nft_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct dst_entry*) ; 

__attribute__((used)) static inline void FUNC4(struct nft_object *obj,
				       struct nft_regs *regs,
				       const struct nft_pktinfo *pkt)
{
	struct nft_tunnel_obj *priv = FUNC1(obj);
	struct sk_buff *skb = pkt->skb;

	FUNC2(skb);
	FUNC0((struct dst_entry *) priv->md);
	FUNC3(skb, (struct dst_entry *) priv->md);
}