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
struct sock {int /*<<< orphan*/  sk_state; scalar_t__ sk_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  sco_sk_list ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	if (!FUNC2(sk, SOCK_ZAPPED) || sk->sk_socket ||
	    FUNC2(sk, SOCK_DEAD))
		return;

	FUNC0("sk %p state %d", sk, sk->sk_state);

	/* Kill poor orphan */
	FUNC1(&sco_sk_list, sk);
	FUNC4(sk, SOCK_DEAD);
	FUNC3(sk);
}