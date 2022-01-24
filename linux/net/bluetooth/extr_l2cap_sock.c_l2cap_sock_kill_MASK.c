#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_state; scalar_t__ sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	if (!FUNC3(sk, SOCK_ZAPPED) || sk->sk_socket)
		return;

	FUNC0("sk %p state %s", sk, FUNC6(sk->sk_state));

	/* Kill poor orphan */

	FUNC1(FUNC2(sk)->chan);
	FUNC5(sk, SOCK_DEAD);
	FUNC4(sk);
}