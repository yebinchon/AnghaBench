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
typedef  int u32 ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {int* data; TYPE_1__ verdict; } ;
struct nft_pktinfo {struct sk_buff* skb; } ;
struct nft_exthdr {size_t dreg; int flags; unsigned int offset; size_t len; int /*<<< orphan*/  type; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  NFT_BREAK ; 
 int NFT_EXTHDR_F_PRESENT ; 
 size_t NFT_REG32_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,unsigned int*,int /*<<< orphan*/ ) ; 
 struct nft_exthdr* FUNC2 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nft_pktinfo const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,unsigned int,int*,size_t) ; 

__attribute__((used)) static void FUNC5(const struct nft_expr *expr,
				 struct nft_regs *regs,
				 const struct nft_pktinfo *pkt)
{
	struct nft_exthdr *priv = FUNC2(expr);
	u32 *dest = &regs->data[priv->dreg];
	struct sk_buff *skb = pkt->skb;
	unsigned int offset;
	int err;

	if (skb->protocol != FUNC0(ETH_P_IP))
		goto err;

	err = FUNC1(FUNC3(pkt), skb, &offset, priv->type);
	if (priv->flags & NFT_EXTHDR_F_PRESENT) {
		*dest = (err >= 0);
		return;
	} else if (err < 0) {
		goto err;
	}
	offset += priv->offset;

	dest[priv->len / NFT_REG32_SIZE] = 0;
	if (FUNC4(pkt->skb, offset, dest, priv->len) < 0)
		goto err;
	return;
err:
	regs->verdict.code = NFT_BREAK;
}