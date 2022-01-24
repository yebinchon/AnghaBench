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
struct tipc_net {struct tipc_link* bcl; int /*<<< orphan*/  bclock; struct tipc_link* bcbase; } ;
struct tipc_link {int rc_ratio; int rcast_support; struct tipc_link* link; int /*<<< orphan*/  inputq; } ;
struct tipc_bc_base {int rc_ratio; int rcast_support; struct tipc_bc_base* link; int /*<<< orphan*/  inputq; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCLINK_WIN_DEFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FB_MTU ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_link*) ; 
 struct tipc_link* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tipc_link**) ; 
 struct tipc_net* FUNC4 (struct net*) ; 

int FUNC5(struct net *net)
{
	struct tipc_net *tn = FUNC4(net);
	struct tipc_bc_base *bb = NULL;
	struct tipc_link *l = NULL;

	bb = FUNC1(sizeof(*bb), GFP_KERNEL);
	if (!bb)
		goto enomem;
	tn->bcbase = bb;
	FUNC2(&FUNC4(net)->bclock);

	if (!FUNC3(net, 0, 0,
				 FB_MTU,
				 BCLINK_WIN_DEFAULT,
				 0,
				 &bb->inputq,
				 NULL,
				 NULL,
				 &l))
		goto enomem;
	bb->link = l;
	tn->bcl = l;
	bb->rc_ratio = 10;
	bb->rcast_support = true;
	return 0;
enomem:
	FUNC0(bb);
	FUNC0(l);
	return -ENOMEM;
}