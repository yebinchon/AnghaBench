#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ error; } ;
struct rt6_info {int rt6i_flags; TYPE_3__* rt6i_idev; TYPE_2__ dst; } ;
struct TYPE_4__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_1__ verdict; scalar_t__* data; } ;
struct nft_pktinfo {int /*<<< orphan*/  skb; int /*<<< orphan*/  tprot; } ;
struct nft_fib {size_t dreg; int flags; } ;
struct nft_expr {int dummy; } ;
typedef  struct net_device const net_device ;
struct ipv6hdr {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  flowi6_iif; } ;
typedef  int /*<<< orphan*/  _iph ;
struct TYPE_6__ {struct net_device const* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int NFTA_FIB_F_IIF ; 
 int NFTA_FIB_F_OIF ; 
 int /*<<< orphan*/  NFT_BREAK ; 
 scalar_t__ NF_INET_PRE_ROUTING ; 
 int RTF_ANYCAST ; 
 int RTF_LOCAL ; 
 int RTF_REJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct flowi6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt6_info*) ; 
 struct nft_fib* FUNC2 (struct nft_expr const*) ; 
 int FUNC3 (struct flowi6*,struct nft_fib const*,struct nft_pktinfo const*,struct net_device const*,struct ipv6hdr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct net_device const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,struct nft_fib const*,struct net_device const*) ; 
 scalar_t__ FUNC6 (struct nft_pktinfo const*) ; 
 struct net_device const* FUNC7 (struct nft_pktinfo const*) ; 
 int /*<<< orphan*/  FUNC8 (struct nft_pktinfo const*) ; 
 struct net_device const* FUNC9 (struct nft_pktinfo const*) ; 
 struct ipv6hdr* FUNC10 (int /*<<< orphan*/ ,int,int,struct ipv6hdr*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(const struct nft_expr *expr, struct nft_regs *regs,
		   const struct nft_pktinfo *pkt)
{
	const struct nft_fib *priv = FUNC2(expr);
	int noff = FUNC11(pkt->skb);
	const struct net_device *oif = NULL;
	u32 *dest = &regs->data[priv->dreg];
	struct ipv6hdr *iph, _iph;
	struct flowi6 fl6 = {
		.flowi6_iif = LOOPBACK_IFINDEX,
		.flowi6_proto = pkt->tprot,
	};
	struct rt6_info *rt;
	int lookup_flags;

	if (priv->flags & NFTA_FIB_F_IIF)
		oif = FUNC7(pkt);
	else if (priv->flags & NFTA_FIB_F_OIF)
		oif = FUNC9(pkt);

	iph = FUNC10(pkt->skb, noff, sizeof(_iph), &_iph);
	if (!iph) {
		regs->verdict.code = NFT_BREAK;
		return;
	}

	lookup_flags = FUNC3(&fl6, priv, pkt, oif, iph);

	if (FUNC6(pkt) == NF_INET_PRE_ROUTING &&
	    FUNC4(pkt->skb, FUNC7(pkt))) {
		FUNC5(dest, priv, FUNC7(pkt));
		return;
	}

	*dest = 0;
	rt = (void *)FUNC0(FUNC8(pkt), &fl6, pkt->skb,
				      lookup_flags);
	if (rt->dst.error)
		goto put_rt_err;

	/* Should not see RTF_LOCAL here */
	if (rt->rt6i_flags & (RTF_REJECT | RTF_ANYCAST | RTF_LOCAL))
		goto put_rt_err;

	if (oif && oif != rt->rt6i_idev->dev)
		goto put_rt_err;

	FUNC5(dest, priv, rt->rt6i_idev->dev);
 put_rt_err:
	FUNC1(rt);
}