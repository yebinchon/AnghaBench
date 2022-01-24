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
struct sunrpc_net {int /*<<< orphan*/  use_gss_proxy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 struct sunrpc_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static int FUNC3(struct net *net, int type)
{
	struct sunrpc_net *sn = FUNC2(net, sunrpc_net_id);
	int ret;

	FUNC0(type != 0 && type != 1);
	ret = FUNC1(&sn->use_gss_proxy, -1, type);
	if (ret != -1 && ret != type)
		return -EBUSY;
	return 0;
}