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
struct sunrpc_net {int use_gss_proxy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct sunrpc_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static bool FUNC2(struct net *net)
{
	struct sunrpc_net *sn = FUNC0(net, sunrpc_net_id);

	/* If use_gss_proxy is still undefined, then try to disable it */
	if (sn->use_gss_proxy == -1)
		FUNC1(net, 0);
	return sn->use_gss_proxy;
}