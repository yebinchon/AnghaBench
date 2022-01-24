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
struct in6_addr {int* s6_addr32; } ;
typedef  int __be32 ;

/* Variables and functions */
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_COMPATv4 ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_LOOPBACK ; 
 int IPV6_ADDR_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr const*) ; 
 int IPV6_ADDR_MULTICAST ; 
 int /*<<< orphan*/  IPV6_ADDR_SCOPE_GLOBAL ; 
 int /*<<< orphan*/  IPV6_ADDR_SCOPE_LINKLOCAL ; 
 int /*<<< orphan*/  IPV6_ADDR_SCOPE_SITELOCAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int IPV6_ADDR_SITELOCAL ; 
 int IPV6_ADDR_UNICAST ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const struct in6_addr *addr)
{
	__be32 st;

	st = addr->s6_addr32[0];

	/* Consider all addresses with the first three bits different of
	   000 and 111 as unicasts.
	 */
	if ((st & FUNC2(0xE0000000)) != FUNC2(0x00000000) &&
	    (st & FUNC2(0xE0000000)) != FUNC2(0xE0000000))
		return (IPV6_ADDR_UNICAST |
			FUNC1(IPV6_ADDR_SCOPE_GLOBAL));

	if ((st & FUNC2(0xFF000000)) == FUNC2(0xFF000000)) {
		/* multicast */
		/* addr-select 3.1 */
		return (IPV6_ADDR_MULTICAST |
			FUNC3(FUNC0(addr)));
	}

	if ((st & FUNC2(0xFFC00000)) == FUNC2(0xFE800000))
		return (IPV6_ADDR_LINKLOCAL | IPV6_ADDR_UNICAST |
			FUNC1(IPV6_ADDR_SCOPE_LINKLOCAL));		/* addr-select 3.1 */
	if ((st & FUNC2(0xFFC00000)) == FUNC2(0xFEC00000))
		return (IPV6_ADDR_SITELOCAL | IPV6_ADDR_UNICAST |
			FUNC1(IPV6_ADDR_SCOPE_SITELOCAL));		/* addr-select 3.1 */
	if ((st & FUNC2(0xFE000000)) == FUNC2(0xFC000000))
		return (IPV6_ADDR_UNICAST |
			FUNC1(IPV6_ADDR_SCOPE_GLOBAL));			/* RFC 4193 */

	if ((addr->s6_addr32[0] | addr->s6_addr32[1]) == 0) {
		if (addr->s6_addr32[2] == 0) {
			if (addr->s6_addr32[3] == 0)
				return IPV6_ADDR_ANY;

			if (addr->s6_addr32[3] == FUNC2(0x00000001))
				return (IPV6_ADDR_LOOPBACK | IPV6_ADDR_UNICAST |
					FUNC1(IPV6_ADDR_SCOPE_LINKLOCAL));	/* addr-select 3.4 */

			return (IPV6_ADDR_COMPATv4 | IPV6_ADDR_UNICAST |
				FUNC1(IPV6_ADDR_SCOPE_GLOBAL));	/* addr-select 3.3 */
		}

		if (addr->s6_addr32[2] == FUNC2(0x0000ffff))
			return (IPV6_ADDR_MAPPED |
				FUNC1(IPV6_ADDR_SCOPE_GLOBAL));	/* addr-select 3.3 */
	}

	return (IPV6_ADDR_UNICAST |
		FUNC1(IPV6_ADDR_SCOPE_GLOBAL));	/* addr-select 3.4 */
}