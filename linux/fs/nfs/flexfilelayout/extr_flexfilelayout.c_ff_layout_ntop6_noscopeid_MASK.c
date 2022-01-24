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
struct in6_addr {struct in6_addr const* s6_addr32; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr const*) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 scalar_t__ FUNC2 (struct in6_addr const*) ; 
 size_t FUNC3 (char*,int const,char*,...) ; 

__attribute__((used)) static size_t
FUNC4(const struct sockaddr *sap, char *buf,
			  const int buflen)
{
	const struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sap;
	const struct in6_addr *addr = &sin6->sin6_addr;

	/*
	 * RFC 4291, Section 2.2.2
	 *
	 * Shorthanded ANY address
	 */
	if (FUNC0(addr))
		return FUNC3(buf, buflen, "::");

	/*
	 * RFC 4291, Section 2.2.2
	 *
	 * Shorthanded loopback address
	 */
	if (FUNC1(addr))
		return FUNC3(buf, buflen, "::1");

	/*
	 * RFC 4291, Section 2.2.3
	 *
	 * Special presentation address format for mapped v4
	 * addresses.
	 */
	if (FUNC2(addr))
		return FUNC3(buf, buflen, "::ffff:%pI4",
					&addr->s6_addr32[3]);

	/*
	 * RFC 4291, Section 2.2.1
	 */
	return FUNC3(buf, buflen, "%pI6c", addr);
}