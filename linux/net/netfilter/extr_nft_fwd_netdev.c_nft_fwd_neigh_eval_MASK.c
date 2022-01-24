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
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {unsigned int code; } ;
struct nft_regs {TYPE_1__ verdict; int /*<<< orphan*/ * data; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_fwd_neigh {size_t sreg_addr; size_t sreg_dev; int nfproto; } ;
struct nft_expr {int dummy; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  hop_limit; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int NEIGH_ARP_TABLE ; 
 int NEIGH_ND_TABLE ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 unsigned int NFT_BREAK ; 
 unsigned int NF_DROP ; 
 unsigned int NF_STOLEN ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iphdr*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct net_device*,void*,struct sk_buff*) ; 
 struct nft_fwd_neigh* FUNC6 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC7 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC9(const struct nft_expr *expr,
			      struct nft_regs *regs,
			      const struct nft_pktinfo *pkt)
{
	struct nft_fwd_neigh *priv = FUNC6(expr);
	void *addr = &regs->data[priv->sreg_addr];
	int oif = regs->data[priv->sreg_dev];
	unsigned int verdict = NF_STOLEN;
	struct sk_buff *skb = pkt->skb;
	struct net_device *dev;
	int neigh_table;

	switch (priv->nfproto) {
	case NFPROTO_IPV4: {
		struct iphdr *iph;

		if (skb->protocol != FUNC1(ETH_P_IP)) {
			verdict = NFT_BREAK;
			goto out;
		}
		if (FUNC8(skb, sizeof(*iph))) {
			verdict = NF_DROP;
			goto out;
		}
		iph = FUNC3(skb);
		FUNC2(iph);
		neigh_table = NEIGH_ARP_TABLE;
		break;
		}
	case NFPROTO_IPV6: {
		struct ipv6hdr *ip6h;

		if (skb->protocol != FUNC1(ETH_P_IPV6)) {
			verdict = NFT_BREAK;
			goto out;
		}
		if (FUNC8(skb, sizeof(*ip6h))) {
			verdict = NF_DROP;
			goto out;
		}
		ip6h = FUNC4(skb);
		ip6h->hop_limit--;
		neigh_table = NEIGH_ND_TABLE;
		break;
		}
	default:
		verdict = NFT_BREAK;
		goto out;
	}

	dev = FUNC0(FUNC7(pkt), oif);
	if (dev == NULL)
		return;

	skb->dev = dev;
	FUNC5(neigh_table, dev, addr, skb);
out:
	regs->verdict.code = verdict;
}