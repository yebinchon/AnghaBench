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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_sock {int /*<<< orphan*/  sk; } ;
struct tipc_net {int /*<<< orphan*/  sk_rht; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct tipc_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct tipc_sock* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_id ; 
 int /*<<< orphan*/  tsk_rht_params ; 

__attribute__((used)) static struct tipc_sock *FUNC5(struct net *net, u32 portid)
{
	struct tipc_net *tn = FUNC0(net, tipc_net_id);
	struct tipc_sock *tsk;

	FUNC1();
	tsk = FUNC3(&tn->sk_rht, &portid, tsk_rht_params);
	if (tsk)
		FUNC4(&tsk->sk);
	FUNC2();

	return tsk;
}