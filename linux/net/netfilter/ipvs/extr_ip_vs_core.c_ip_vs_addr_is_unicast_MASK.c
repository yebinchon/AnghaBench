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
union nf_inet_addr {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int IPV6_ADDR_UNICAST ; 
 scalar_t__ RTN_UNICAST ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct net *net, int af,
					union nf_inet_addr *addr)
{
#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6)
		return ipv6_addr_type(&addr->in6) & IPV6_ADDR_UNICAST;
#endif
	return (FUNC0(net, addr->ip) == RTN_UNICAST);
}