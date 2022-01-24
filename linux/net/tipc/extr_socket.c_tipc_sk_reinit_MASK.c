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
struct tipc_msg {int dummy; } ;
struct tipc_sock {int /*<<< orphan*/  sk; struct tipc_msg phdr; } ;
struct tipc_net {int /*<<< orphan*/  sk_rht; } ;
struct rhashtable_iter {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct tipc_sock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 struct tipc_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct rhashtable_iter*) ; 
 struct tipc_sock* FUNC9 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC11 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_net_id ; 
 int /*<<< orphan*/  FUNC14 (struct net*) ; 

void FUNC15(struct net *net)
{
	struct tipc_net *tn = FUNC5(net, tipc_net_id);
	struct rhashtable_iter iter;
	struct tipc_sock *tsk;
	struct tipc_msg *msg;

	FUNC7(&tn->sk_rht, &iter);

	do {
		FUNC10(&iter);

		while ((tsk = FUNC9(&iter)) && !FUNC1(tsk)) {
			FUNC12(&tsk->sk);
			FUNC11(&iter);
			FUNC2(&tsk->sk);
			msg = &tsk->phdr;
			FUNC4(msg, FUNC14(net));
			FUNC3(msg, FUNC14(net));
			FUNC6(&tsk->sk);
			FUNC10(&iter);
			FUNC13(&tsk->sk);
		}

		FUNC11(&iter);
	} while (tsk == FUNC0(-EAGAIN));

	FUNC8(&iter);
}