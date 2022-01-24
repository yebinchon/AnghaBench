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
struct sunrpc_net {int /*<<< orphan*/  gssd_dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct sunrpc_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

void FUNC2(struct net *net)
{
	struct sunrpc_net *sn = FUNC0(net, sunrpc_net_id);

	FUNC1(sn->gssd_dummy);
}