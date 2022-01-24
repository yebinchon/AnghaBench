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
struct sunrpc_net {struct cache_detail* rsi_cache; } ;
struct net {int dummy; } ;
struct cache_detail {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cache_detail*) ; 
 int FUNC1 (struct cache_detail*) ; 
 struct cache_detail* FUNC2 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_detail*,struct net*) ; 
 int FUNC4 (struct cache_detail*,struct net*) ; 
 struct sunrpc_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rsi_cache_template ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static int FUNC6(struct net *net)
{
	struct sunrpc_net *sn = FUNC5(net, sunrpc_net_id);
	struct cache_detail *cd;
	int err;

	cd = FUNC2(&rsi_cache_template, net);
	if (FUNC0(cd))
		return FUNC1(cd);
	err = FUNC4(cd, net);
	if (err) {
		FUNC3(cd, net);
		return err;
	}
	sn->rsi_cache = cd;
	return 0;
}