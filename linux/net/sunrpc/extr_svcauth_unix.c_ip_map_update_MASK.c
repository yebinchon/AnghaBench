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
typedef  int /*<<< orphan*/  time_t ;
struct unix_domain {int dummy; } ;
struct sunrpc_net {int /*<<< orphan*/  ip_map_cache; } ;
struct net {int dummy; } ;
struct ip_map {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct ip_map*,struct unix_domain*,int /*<<< orphan*/ ) ; 
 struct sunrpc_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static inline int FUNC2(struct net *net, struct ip_map *ipm,
		struct unix_domain *udom, time_t expiry)
{
	struct sunrpc_net *sn;

	sn = FUNC1(net, sunrpc_net_id);
	return FUNC0(sn->ip_map_cache, ipm, udom, expiry);
}