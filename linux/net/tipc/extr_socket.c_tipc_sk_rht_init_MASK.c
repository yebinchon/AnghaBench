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
struct tipc_net {int /*<<< orphan*/  sk_rht; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tipc_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_id ; 
 int /*<<< orphan*/  tsk_rht_params ; 

int FUNC2(struct net *net)
{
	struct tipc_net *tn = FUNC0(net, tipc_net_id);

	return FUNC1(&tn->sk_rht, &tsk_rht_params);
}