#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct in6_addr {int /*<<< orphan*/ * s6_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOWPAN_IPHC_DAM_00 ; 
 int /*<<< orphan*/  LOWPAN_IPHC_DAM_01 ; 
 int /*<<< orphan*/  LOWPAN_IPHC_DAM_10 ; 
 int /*<<< orphan*/  LOWPAN_IPHC_DAM_11 ; 
 scalar_t__ FUNC0 (struct in6_addr const*) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 scalar_t__ FUNC2 (struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static u8 FUNC5(u8 **hc_ptr,
					  const struct in6_addr *ipaddr)
{
	u8 val;

	if (FUNC2(ipaddr)) {
		FUNC4("compressed to 1 octet\n");
		/* use last byte */
		FUNC3(hc_ptr, &ipaddr->s6_addr[15], 1);
		val = LOWPAN_IPHC_DAM_11;
	} else if (FUNC0(ipaddr)) {
		FUNC4("compressed to 4 octets\n");
		/* second byte + the last three */
		FUNC3(hc_ptr, &ipaddr->s6_addr[1], 1);
		FUNC3(hc_ptr, &ipaddr->s6_addr[13], 3);
		val = LOWPAN_IPHC_DAM_10;
	} else if (FUNC1(ipaddr)) {
		FUNC4("compressed to 6 octets\n");
		/* second byte + the last five */
		FUNC3(hc_ptr, &ipaddr->s6_addr[1], 1);
		FUNC3(hc_ptr, &ipaddr->s6_addr[11], 5);
		val = LOWPAN_IPHC_DAM_01;
	} else {
		FUNC4("using full address\n");
		FUNC3(hc_ptr, ipaddr->s6_addr, 16);
		val = LOWPAN_IPHC_DAM_00;
	}

	return val;
}