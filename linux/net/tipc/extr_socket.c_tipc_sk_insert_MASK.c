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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct tipc_sock {struct sock sk; int /*<<< orphan*/  node; scalar_t__ portid; } ;
struct tipc_net {int /*<<< orphan*/  sk_rht; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ TIPC_MAX_PORT ; 
 scalar_t__ TIPC_MIN_PORT ; 
 struct tipc_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct net* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  tipc_net_id ; 
 int /*<<< orphan*/  tsk_rht_params ; 

__attribute__((used)) static int FUNC6(struct tipc_sock *tsk)
{
	struct sock *sk = &tsk->sk;
	struct net *net = FUNC4(sk);
	struct tipc_net *tn = FUNC0(net, tipc_net_id);
	u32 remaining = (TIPC_MAX_PORT - TIPC_MIN_PORT) + 1;
	u32 portid = FUNC1() % remaining + TIPC_MIN_PORT;

	while (remaining--) {
		portid++;
		if ((portid < TIPC_MIN_PORT) || (portid > TIPC_MAX_PORT))
			portid = TIPC_MIN_PORT;
		tsk->portid = portid;
		FUNC3(&tsk->sk);
		if (!FUNC2(&tn->sk_rht, &tsk->node,
						   tsk_rht_params))
			return 0;
		FUNC5(&tsk->sk);
	}

	return -1;
}