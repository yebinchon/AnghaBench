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
struct sock {struct l2tp_tunnel* sk_user_data; } ;
struct l2tp_tunnel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_tunnel*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct l2tp_tunnel *tunnel = sk->sk_user_data;

	FUNC3(sk);
	FUNC1(sk);
	FUNC4(sk);

	if (tunnel)
		FUNC2(tunnel);

	FUNC0(sk);
}