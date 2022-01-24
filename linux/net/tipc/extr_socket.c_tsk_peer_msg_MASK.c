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
struct tipc_sock {struct sock sk; } ;
struct tipc_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tipc_msg*) ; 
 scalar_t__ FUNC2 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct tipc_sock*) ; 
 scalar_t__ FUNC7 (struct tipc_sock*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static bool FUNC9(struct tipc_sock *tsk, struct tipc_msg *msg)
{
	struct sock *sk = &tsk->sk;
	u32 self = FUNC4(FUNC3(sk));
	u32 peer_port = FUNC7(tsk);
	u32 orig_node, peer_node;

	if (FUNC8(!FUNC5(sk)))
		return false;

	if (FUNC8(FUNC2(msg) != peer_port))
		return false;

	orig_node = FUNC1(msg);
	peer_node = FUNC6(tsk);

	if (FUNC0(orig_node == peer_node))
		return true;

	if (!orig_node && peer_node == self)
		return true;

	if (!peer_node && orig_node == self)
		return true;

	return false;
}