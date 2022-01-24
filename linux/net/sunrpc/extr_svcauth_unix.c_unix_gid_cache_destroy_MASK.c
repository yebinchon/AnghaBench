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
struct sunrpc_net {struct cache_detail* unix_gid_cache; } ;
struct net {int dummy; } ;
struct cache_detail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_detail*,struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_detail*,struct net*) ; 
 struct sunrpc_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

void FUNC4(struct net *net)
{
	struct sunrpc_net *sn = FUNC3(net, sunrpc_net_id);
	struct cache_detail *cd = sn->unix_gid_cache;

	sn->unix_gid_cache = NULL;
	FUNC1(cd);
	FUNC2(cd, net);
	FUNC0(cd, net);
}