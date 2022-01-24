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
typedef  int u32 ;
struct tipc_bc_base {int rc_ratio; int /*<<< orphan*/  rcast_support; int /*<<< orphan*/  bcast_support; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOPROTOOPT ; 
 struct tipc_bc_base* FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 

__attribute__((used)) static int FUNC4(struct net *net, u32 bc_ratio)
{
	struct tipc_bc_base *bb = FUNC0(net);

	if (!bb->bcast_support || !bb->rcast_support)
		return -ENOPROTOOPT;

	if (bc_ratio > 100 || bc_ratio <= 0)
		return -EINVAL;

	bb->rc_ratio = bc_ratio;
	FUNC1(net);
	FUNC3(net);
	FUNC2(net);

	return 0;
}