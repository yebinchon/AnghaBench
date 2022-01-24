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
struct in6_addr {int* s6_addr; int /*<<< orphan*/ * s6_addr16; } ;
struct ieee802154_addr {int mode; int /*<<< orphan*/  short_addr; int /*<<< orphan*/  extended_addr; } ;

/* Variables and functions */
 int EUI64_ADDR_LEN ; 
#define  IEEE802154_ADDR_LONG 129 
#define  IEEE802154_ADDR_SHORT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr const*,unsigned char*) ; 

__attribute__((used)) static inline bool
FUNC5(const struct in6_addr *ipaddr,
				   const void *lladdr)
{
	const struct ieee802154_addr *addr = lladdr;
	unsigned char extended_addr[EUI64_ADDR_LEN];
	bool lladdr_compress = false;
	struct in6_addr tmp = {};

	switch (addr->mode) {
	case IEEE802154_ADDR_LONG:
		FUNC2(&extended_addr, &addr->extended_addr);
		if (FUNC4(ipaddr, extended_addr))
			lladdr_compress = true;
		break;
	case IEEE802154_ADDR_SHORT:
		/* fe:80::ff:fe00:XXXX
		 *                \__/
		 *             short_addr
		 *
		 * Universe/Local bit is zero.
		 */
		tmp.s6_addr[0] = 0xFE;
		tmp.s6_addr[1] = 0x80;
		tmp.s6_addr[11] = 0xFF;
		tmp.s6_addr[12] = 0xFE;
		FUNC1(&tmp.s6_addr16[7],
					&addr->short_addr);
		if (FUNC3(&tmp, ipaddr))
			lladdr_compress = true;
		break;
	default:
		/* should never handled and filtered by 802154 6lowpan */
		FUNC0(1);
		break;
	}

	return lladdr_compress;
}