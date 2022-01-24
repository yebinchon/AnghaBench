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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  tmp ;
struct net_device {int dummy; } ;
struct lowpan_iphc_ctx {int /*<<< orphan*/  plen; int /*<<< orphan*/  pfx; } ;
struct in6_addr {int* s6_addr; } ;
struct TYPE_2__ {int lltype; } ;

/* Variables and functions */
 size_t LOWPAN_IPHC_DAM_00 ; 
 size_t LOWPAN_IPHC_DAM_01 ; 
 size_t LOWPAN_IPHC_DAM_10 ; 
 size_t LOWPAN_IPHC_DAM_11 ; 
#define  LOWPAN_LLTYPE_IEEE802154 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct in6_addr*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device const*,struct lowpan_iphc_ctx const*,struct in6_addr const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr const*,struct lowpan_iphc_ctx const*,unsigned char const*) ; 
 size_t* lowpan_iphc_dam_to_sam_value ; 
 int /*<<< orphan*/  FUNC6 (size_t**,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct in6_addr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC9(u8 **hc_ptr, const struct net_device *dev,
				   const struct in6_addr *ipaddr,
				   const struct lowpan_iphc_ctx *ctx,
				   const unsigned char *lladdr, bool sam)
{
	struct in6_addr tmp = {};
	u8 dam;

	switch (FUNC3(dev)->lltype) {
	case LOWPAN_LLTYPE_IEEE802154:
		if (FUNC5(ipaddr, ctx,
							   lladdr)) {
			dam = LOWPAN_IPHC_DAM_11;
			goto out;
		}
		break;
	default:
		if (FUNC4(dev, ctx, ipaddr, lladdr)) {
			dam = LOWPAN_IPHC_DAM_11;
			goto out;
		}
		break;
	}

	FUNC8(&tmp, 0, sizeof(tmp));
	/* check for SAM/DAM = 10 */
	tmp.s6_addr[11] = 0xFF;
	tmp.s6_addr[12] = 0xFE;
	FUNC7(&tmp.s6_addr[14], &ipaddr->s6_addr[14], 2);
	/* context information are always used */
	FUNC2(&tmp, &ctx->pfx, ctx->plen);
	if (FUNC1(&tmp, ipaddr)) {
		FUNC6(hc_ptr, &ipaddr->s6_addr[14], 2);
		dam = LOWPAN_IPHC_DAM_10;
		goto out;
	}

	FUNC8(&tmp, 0, sizeof(tmp));
	/* check for SAM/DAM = 01, should always match */
	FUNC7(&tmp.s6_addr[8], &ipaddr->s6_addr[8], 8);
	/* context information are always used */
	FUNC2(&tmp, &ctx->pfx, ctx->plen);
	if (FUNC1(&tmp, ipaddr)) {
		FUNC6(hc_ptr, &ipaddr->s6_addr[8], 8);
		dam = LOWPAN_IPHC_DAM_01;
		goto out;
	}

	FUNC0(1, "context found but no address mode matched\n");
	return LOWPAN_IPHC_DAM_00;
out:

	if (sam)
		return lowpan_iphc_dam_to_sam_value[dam];
	else
		return dam;
}