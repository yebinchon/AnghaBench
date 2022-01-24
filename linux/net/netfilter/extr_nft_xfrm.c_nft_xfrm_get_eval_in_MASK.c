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
struct xfrm_state {int dummy; } ;
struct sec_path {size_t len; struct xfrm_state** xvec; } ;
struct nft_xfrm {size_t spnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_BREAK ; 
 int /*<<< orphan*/  FUNC0 (struct nft_xfrm const*,struct nft_regs*,struct xfrm_state const*) ; 
 struct sec_path* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct nft_xfrm *priv,
				    struct nft_regs *regs,
				    const struct nft_pktinfo *pkt)
{
	const struct sec_path *sp = FUNC1(pkt->skb);
	const struct xfrm_state *state;

	if (sp == NULL || sp->len <= priv->spnum) {
		regs->verdict.code = NFT_BREAK;
		return;
	}

	state = sp->xvec[priv->spnum];
	FUNC0(priv, regs, state);
}