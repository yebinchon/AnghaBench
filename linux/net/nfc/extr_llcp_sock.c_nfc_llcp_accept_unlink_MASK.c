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
struct sock {int /*<<< orphan*/  sk_state; } ;
struct nfc_llcp_sock {int /*<<< orphan*/ * parent; int /*<<< orphan*/  accept_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfc_llcp_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

void FUNC5(struct sock *sk)
{
	struct nfc_llcp_sock *llcp_sock = FUNC1(sk);

	FUNC2("state %d\n", sk->sk_state);

	FUNC0(&llcp_sock->accept_queue);
	FUNC3(llcp_sock->parent);
	llcp_sock->parent = NULL;

	FUNC4(sk);
}