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
struct sock {scalar_t__ sk_state; } ;

/* Variables and functions */
 scalar_t__ SMC_CLOSED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sock *sk)
{
	if (sk->sk_state != SMC_CLOSED)
		return;
	if (!FUNC1(sk, SOCK_DEAD))
		return;

	FUNC0(sk);
}