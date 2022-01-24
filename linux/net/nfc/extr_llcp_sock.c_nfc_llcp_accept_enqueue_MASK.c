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
struct sock {int dummy; } ;
struct nfc_llcp_sock {struct sock* parent; int /*<<< orphan*/  accept_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfc_llcp_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

void FUNC4(struct sock *parent, struct sock *sk)
{
	struct nfc_llcp_sock *llcp_sock = FUNC1(sk);
	struct nfc_llcp_sock *llcp_sock_parent = FUNC1(parent);

	/* Lock will be free from unlink */
	FUNC3(sk);

	FUNC0(&llcp_sock->accept_queue,
		      &llcp_sock_parent->accept_queue);
	llcp_sock->parent = parent;
	FUNC2(parent);
}