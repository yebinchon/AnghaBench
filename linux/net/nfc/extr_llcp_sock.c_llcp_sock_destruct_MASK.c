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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_receive_queue; } ;
struct nfc_llcp_sock {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ LLCP_CONNECTED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 struct nfc_llcp_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_llcp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct nfc_llcp_sock *llcp_sock = FUNC0(sk);

	FUNC3("%p\n", sk);

	if (sk->sk_state == LLCP_CONNECTED)
		FUNC2(llcp_sock->dev);

	FUNC5(&sk->sk_receive_queue);

	FUNC1(llcp_sock);

	if (!FUNC6(sk, SOCK_DEAD)) {
		FUNC4("Freeing alive NFC LLCP socket %p\n", sk);
		return;
	}
}