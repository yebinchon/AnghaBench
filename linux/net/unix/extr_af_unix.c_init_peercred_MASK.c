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
struct sock {scalar_t__ sk_peer_cred; int /*<<< orphan*/  sk_peer_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	FUNC3(sk->sk_peer_pid);
	if (sk->sk_peer_cred)
		FUNC2(sk->sk_peer_cred);
	sk->sk_peer_pid  = FUNC1(FUNC4(current));
	sk->sk_peer_cred = FUNC0();
}