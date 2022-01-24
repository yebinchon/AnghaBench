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
struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ENOTCONN ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sock*) ; 
 int FUNC10 (long) ; 
 int /*<<< orphan*/  wait ; 
 long FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static int FUNC12(struct socket *sock, long *timeop)
{
	struct sock *sk = sock->sk;
	FUNC0(wait, woken_wake_function);
	long timeo = *timeop;
	int err = FUNC9(sk);

	if (err)
		return err;

	for (;;) {
		if (timeo && FUNC8(&sk->sk_receive_queue)) {
			if (sk->sk_shutdown & RCV_SHUTDOWN) {
				err = -ENOTCONN;
				break;
			}
			FUNC1(FUNC7(sk), &wait);
			FUNC3(sk);
			timeo = FUNC11(&wait, TASK_INTERRUPTIBLE, timeo);
			FUNC5();
			FUNC2(sk);
			FUNC4(FUNC7(sk), &wait);
		}
		err = 0;
		if (!FUNC8(&sk->sk_receive_queue))
			break;
		err = -EAGAIN;
		if (!timeo)
			break;
		err = FUNC10(timeo);
		if (FUNC6(current))
			break;

		err = FUNC9(sk);
		if (err)
			break;
	}
	*timeop = timeo;
	return err;
}