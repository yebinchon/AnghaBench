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
struct vsock_sock {int close_work_scheduled; int /*<<< orphan*/  close_work; int /*<<< orphan*/  trans; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVS_CLOSE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 scalar_t__ TCP_CLOSING ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  hvs_close_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sock* FUNC3 (struct vsock_sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static bool FUNC6(struct vsock_sock *vsk)
{
	struct sock *sk = FUNC3(vsk);

	if (!(sk->sk_state == TCP_ESTABLISHED ||
	      sk->sk_state == TCP_CLOSING))
		return true;

	if ((sk->sk_shutdown & SHUTDOWN_MASK) != SHUTDOWN_MASK)
		FUNC1(vsk->trans, SHUTDOWN_MASK);

	if (FUNC4(sk, SOCK_DONE))
		return true;

	/* This reference will be dropped by the delayed close routine */
	FUNC5(sk);
	FUNC0(&vsk->close_work, hvs_close_timeout);
	vsk->close_work_scheduled = true;
	FUNC2(&vsk->close_work, HVS_CLOSE_TIMEOUT);
	return false;
}