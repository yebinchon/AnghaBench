#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; scalar_t__* data; } ;
struct nft_pktinfo {TYPE_2__* skb; } ;
struct nft_fib {size_t dreg; int flags; } ;
struct nft_expr {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int tos; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct flowi4 {int flowi4_tos; void* saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_mark; int /*<<< orphan*/  flowi4_iif; int /*<<< orphan*/  flowi4_scope; } ;
struct fib_result {int type; int /*<<< orphan*/  fi; } ;
typedef  int /*<<< orphan*/  _iph ;
struct TYPE_6__ {int /*<<< orphan*/  mark; struct net_device const* dev; } ;

/* Variables and functions */
 int DSCP_BITS ; 
 int /*<<< orphan*/  FIB_LOOKUP_IGNORE_LINKSTATE ; 
 struct net_device* FUNC0 (struct fib_result) ; 
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int NFTA_FIB_F_DADDR ; 
 int NFTA_FIB_F_IIF ; 
 int NFTA_FIB_F_MARK ; 
 int NFTA_FIB_F_OIF ; 
 int /*<<< orphan*/  NFT_BREAK ; 
 scalar_t__ NF_INET_PRE_ROUTING ; 
#define  RTN_LOCAL 129 
#define  RTN_UNICAST 128 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct flowi4*,struct fib_result*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct nft_fib* FUNC7 (struct nft_expr const*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,struct net_device const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,struct nft_fib const*,struct net_device const*) ; 
 scalar_t__ FUNC10 (struct nft_pktinfo const*) ; 
 struct net_device const* FUNC11 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC12 (struct nft_pktinfo const*) ; 
 struct net_device* FUNC13 (struct nft_pktinfo const*) ; 
 struct iphdr* FUNC14 (TYPE_2__*,int,int,struct iphdr*) ; 
 int FUNC15 (TYPE_2__*) ; 

void FUNC16(const struct nft_expr *expr, struct nft_regs *regs,
		   const struct nft_pktinfo *pkt)
{
	const struct nft_fib *priv = FUNC7(expr);
	int noff = FUNC15(pkt->skb);
	u32 *dest = &regs->data[priv->dreg];
	struct iphdr *iph, _iph;
	struct fib_result res;
	struct flowi4 fl4 = {
		.flowi4_scope = RT_SCOPE_UNIVERSE,
		.flowi4_iif = LOOPBACK_IFINDEX,
	};
	const struct net_device *oif;
	const struct net_device *found;

	/*
	 * Do not set flowi4_oif, it restricts results (for example, asking
	 * for oif 3 will get RTN_UNICAST result even if the daddr exits
	 * on another interface.
	 *
	 * Search results for the desired outinterface instead.
	 */
	if (priv->flags & NFTA_FIB_F_OIF)
		oif = FUNC13(pkt);
	else if (priv->flags & NFTA_FIB_F_IIF)
		oif = FUNC11(pkt);
	else
		oif = NULL;

	if (FUNC10(pkt) == NF_INET_PRE_ROUTING &&
	    FUNC8(pkt->skb, FUNC11(pkt))) {
		FUNC9(dest, priv, FUNC11(pkt));
		return;
	}

	iph = FUNC14(pkt->skb, noff, sizeof(_iph), &_iph);
	if (!iph) {
		regs->verdict.code = NFT_BREAK;
		return;
	}

	if (FUNC6(iph->saddr)) {
		if (FUNC4(iph->daddr) ||
		    FUNC5(iph->daddr)) {
			FUNC9(dest, priv, pkt->skb->dev);
			return;
		}
	}

	if (priv->flags & NFTA_FIB_F_MARK)
		fl4.flowi4_mark = pkt->skb->mark;

	fl4.flowi4_tos = iph->tos & DSCP_BITS;

	if (priv->flags & NFTA_FIB_F_DADDR) {
		fl4.daddr = iph->daddr;
		fl4.saddr = FUNC3(iph->saddr);
	} else {
		fl4.daddr = iph->saddr;
		fl4.saddr = FUNC3(iph->daddr);
	}

	*dest = 0;

	if (FUNC2(FUNC12(pkt), &fl4, &res, FIB_LOOKUP_IGNORE_LINKSTATE))
		return;

	switch (res.type) {
	case RTN_UNICAST:
		break;
	case RTN_LOCAL: /* Should not see RTN_LOCAL here */
		return;
	default:
		break;
	}

       if (!oif) {
               found = FUNC0(res);
	} else {
		if (!FUNC1(res.fi, oif))
			return;

		found = oif;
	}

	FUNC9(dest, priv, found);
}