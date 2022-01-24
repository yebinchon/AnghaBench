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
struct net_device {int addr_len; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
#define  ETH_ALEN 129 
#define  EUI64_ADDR_LEN 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*,void const*) ; 

__attribute__((used)) static void FUNC3(const struct net_device *dev,
					  struct in6_addr *ipaddr,
					  const void *lladdr)
{
	switch (dev->addr_len) {
	case ETH_ALEN:
		FUNC1(ipaddr, lladdr);
		break;
	case EUI64_ADDR_LEN:
		FUNC2(ipaddr, lladdr);
		break;
	default:
		FUNC0(1);
		break;
	}
}