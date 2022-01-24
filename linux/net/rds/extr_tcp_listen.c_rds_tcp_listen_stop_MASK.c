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
struct work_struct {int dummy; } ;
struct socket {struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; int /*<<< orphan*/ * sk_data_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct socket *sock, struct work_struct *acceptor)
{
	struct sock *sk;

	if (!sock)
		return;

	sk = sock->sk;

	/* serialize with and prevent further callbacks */
	FUNC2(sk);
	FUNC5(&sk->sk_callback_lock);
	if (sk->sk_user_data) {
		sk->sk_data_ready = sk->sk_user_data;
		sk->sk_user_data = NULL;
	}
	FUNC6(&sk->sk_callback_lock);
	FUNC3(sk);

	/* wait for accepts to stop and close the socket */
	FUNC1(rds_wq);
	FUNC0(acceptor);
	FUNC4(sock);
}