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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int priv_flags; int /*<<< orphan*/  dev_addr; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  parms; int /*<<< orphan*/  probes; scalar_t__ primary_key; struct net_device* dev; } ;
struct in_device {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__ saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  APP_PROBES ; 
 int /*<<< orphan*/  ARPOP_REQUEST ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int IFF_XMIT_DST_RELEASE ; 
 int FUNC0 (struct in_device*) ; 
 int MAX_ADDR_LEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  RTN_LOCAL ; 
 int /*<<< orphan*/  RT_SCOPE_LINK ; 
 int /*<<< orphan*/  UCAST_PROBES ; 
 struct in_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct net_device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dst_entry*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct neighbour*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 struct dst_entry* FUNC15 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC16(struct neighbour *neigh, struct sk_buff *skb)
{
	__be32 saddr = 0;
	u8 dst_ha[MAX_ADDR_LEN], *dst_hw = NULL;
	struct net_device *dev = neigh->dev;
	__be32 target = *(__be32 *)neigh->primary_key;
	int probes = FUNC4(&neigh->probes);
	struct in_device *in_dev;
	struct dst_entry *dst = NULL;

	FUNC13();
	in_dev = FUNC2(dev);
	if (!in_dev) {
		FUNC14();
		return;
	}
	switch (FUNC0(in_dev)) {
	default:
	case 0:		/* By default announce any local IP */
		if (skb && FUNC7(FUNC5(dev), dev,
					  FUNC9(skb)->saddr) == RTN_LOCAL)
			saddr = FUNC9(skb)->saddr;
		break;
	case 1:		/* Restrict announcements of saddr in same subnet */
		if (!skb)
			break;
		saddr = FUNC9(skb)->saddr;
		if (FUNC7(FUNC5(dev), dev,
					     saddr) == RTN_LOCAL) {
			/* saddr should be known to target */
			if (FUNC6(in_dev, target, saddr))
				break;
		}
		saddr = 0;
		break;
	case 2:		/* Avoid secondary IPs, get a primary/preferred one */
		break;
	}
	FUNC14();

	if (!saddr)
		saddr = FUNC8(dev, target, RT_SCOPE_LINK);

	probes -= FUNC1(neigh->parms, UCAST_PROBES);
	if (probes < 0) {
		if (!(neigh->nud_state & NUD_VALID))
			FUNC12("trying to ucast probe in NUD_INVALID\n");
		FUNC11(dst_ha, neigh, dev);
		dst_hw = dst_ha;
	} else {
		probes -= FUNC1(neigh->parms, APP_PROBES);
		if (probes < 0) {
			FUNC10(neigh);
			return;
		}
	}

	if (skb && !(dev->priv_flags & IFF_XMIT_DST_RELEASE))
		dst = FUNC15(skb);
	FUNC3(ARPOP_REQUEST, ETH_P_ARP, target, dev, saddr,
		     dst_hw, dev->dev_addr, NULL, dst);
}