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
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {int* data; TYPE_1__ verdict; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;
struct nft_exthdr {size_t dreg; int flags; unsigned int offset; size_t len; int /*<<< orphan*/  type; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_BREAK ; 
 int NFT_EXTHDR_F_PRESENT ; 
 size_t NFT_REG32_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nft_exthdr* FUNC1 (struct nft_expr const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int,int*,size_t) ; 

__attribute__((used)) static void FUNC3(const struct nft_expr *expr,
				 struct nft_regs *regs,
				 const struct nft_pktinfo *pkt)
{
	struct nft_exthdr *priv = FUNC1(expr);
	u32 *dest = &regs->data[priv->dreg];
	unsigned int offset = 0;
	int err;

	err = FUNC0(pkt->skb, &offset, priv->type, NULL, NULL);
	if (priv->flags & NFT_EXTHDR_F_PRESENT) {
		*dest = (err >= 0);
		return;
	} else if (err < 0) {
		goto err;
	}
	offset += priv->offset;

	dest[priv->len / NFT_REG32_SIZE] = 0;
	if (FUNC2(pkt->skb, offset, dest, priv->len) < 0)
		goto err;
	return;
err:
	regs->verdict.code = NFT_BREAK;
}