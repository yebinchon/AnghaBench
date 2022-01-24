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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct lowpan_iphc_ctx {int /*<<< orphan*/  plen; int /*<<< orphan*/  pfx; } ;
struct in6_addr {int* s6_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  lltype; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  LOWPAN_IPHC_DAM_00 135 
#define  LOWPAN_IPHC_DAM_01 134 
#define  LOWPAN_IPHC_DAM_10 133 
#define  LOWPAN_IPHC_DAM_11 132 
#define  LOWPAN_IPHC_SAM_01 131 
#define  LOWPAN_IPHC_SAM_10 130 
#define  LOWPAN_IPHC_SAM_11 129 
#define  LOWPAN_LLTYPE_IEEE802154 128 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct net_device const*) ; 
 int FUNC2 (struct sk_buff*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device const*,struct in6_addr*,void const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int*,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb,
					   const struct net_device *dev,
					   const struct lowpan_iphc_ctx *ctx,
					   struct in6_addr *ipaddr,
					   u8 address_mode, const void *lladdr)
{
	bool fail;

	switch (address_mode) {
	/* SAM and DAM are the same here */
	case LOWPAN_IPHC_DAM_00:
		fail = false;
		/* SAM_00 -> unspec address ::
		 * Do nothing, address is already ::
		 *
		 * DAM 00 -> reserved should never occur.
		 */
		break;
	case LOWPAN_IPHC_SAM_01:
	case LOWPAN_IPHC_DAM_01:
		fail = FUNC2(skb, &ipaddr->s6_addr[8], 8);
		FUNC0(ipaddr, &ctx->pfx, ctx->plen);
		break;
	case LOWPAN_IPHC_SAM_10:
	case LOWPAN_IPHC_DAM_10:
		ipaddr->s6_addr[11] = 0xFF;
		ipaddr->s6_addr[12] = 0xFE;
		fail = FUNC2(skb, &ipaddr->s6_addr[14], 2);
		FUNC0(ipaddr, &ctx->pfx, ctx->plen);
		break;
	case LOWPAN_IPHC_SAM_11:
	case LOWPAN_IPHC_DAM_11:
		fail = false;
		switch (FUNC1(dev)->lltype) {
		case LOWPAN_LLTYPE_IEEE802154:
			FUNC3(ipaddr, lladdr);
			break;
		default:
			FUNC4(dev, ipaddr, lladdr);
			break;
		}
		FUNC0(ipaddr, &ctx->pfx, ctx->plen);
		break;
	default:
		FUNC5("Invalid sam value: 0x%x\n", address_mode);
		return -EINVAL;
	}

	if (fail) {
		FUNC5("Failed to fetch skb data\n");
		return -EIO;
	}

	FUNC6(NULL,
			"Reconstructed context based ipv6 src addr is",
			ipaddr->s6_addr, 16);

	return 0;
}