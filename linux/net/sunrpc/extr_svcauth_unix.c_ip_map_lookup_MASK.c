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
struct sunrpc_net {int /*<<< orphan*/  ip_map_cache; } ;
struct net {int dummy; } ;
struct ip_map {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 struct ip_map* FUNC0 (int /*<<< orphan*/ ,char*,struct in6_addr*) ; 
 struct sunrpc_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static inline struct ip_map *FUNC2(struct net *net, char *class,
		struct in6_addr *addr)
{
	struct sunrpc_net *sn;

	sn = FUNC1(net, sunrpc_net_id);
	return FUNC0(sn->ip_map_cache, class, addr);
}