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
struct net_device {int dummy; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr16; } ;
struct TYPE_2__ {int lltype; } ;

/* Variables and functions */
 size_t LOWPAN_IPHC_DAM_01 ; 
 size_t LOWPAN_IPHC_DAM_10 ; 
 size_t LOWPAN_IPHC_DAM_11 ; 
#define  LOWPAN_LLTYPE_IEEE802154 128 
 TYPE_1__* FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device const*,int /*<<< orphan*/ *,struct in6_addr const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr const*,unsigned char const*) ; 
 size_t* lowpan_iphc_dam_to_sam_value ; 
 scalar_t__ FUNC3 (struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC4 (size_t**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t*,int) ; 

__attribute__((used)) static u8 FUNC7(u8 **hc_ptr, const struct net_device *dev,
				  const struct in6_addr *ipaddr,
				  const unsigned char *lladdr, bool sam)
{
	u8 dam = LOWPAN_IPHC_DAM_01;

	switch (FUNC0(dev)->lltype) {
	case LOWPAN_LLTYPE_IEEE802154:
		if (FUNC2(ipaddr, lladdr)) {
			dam = LOWPAN_IPHC_DAM_11; /* 0-bits */
			FUNC5("address compression 0 bits\n");
			goto out;
		}
		break;
	default:
		if (FUNC1(dev, NULL, ipaddr, lladdr)) {
			dam = LOWPAN_IPHC_DAM_11;
			FUNC5("address compression 0 bits\n");
			goto out;
		}

		break;
	}

	if (FUNC3(ipaddr)) {
		/* compress IID to 16 bits xxxx::XXXX */
		FUNC4(hc_ptr, &ipaddr->s6_addr16[7], 2);
		dam = LOWPAN_IPHC_DAM_10; /* 16-bits */
		FUNC6(NULL, "Compressed ipv6 addr is (16 bits)",
				*hc_ptr - 2, 2);
		goto out;
	}

	/* do not compress IID => xxxx::IID */
	FUNC4(hc_ptr, &ipaddr->s6_addr16[4], 8);
	FUNC6(NULL, "Compressed ipv6 addr is (64 bits)",
			*hc_ptr - 8, 8);

out:

	if (sam)
		return lowpan_iphc_dam_to_sam_value[dam];
	else
		return dam;
}