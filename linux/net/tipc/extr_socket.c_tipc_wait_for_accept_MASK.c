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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 long FUNC5 (long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC10(struct socket *sock, long timeo)
{
	struct sock *sk = sock->sk;
	FUNC0(wait);
	int err;

	/* True wake-one mechanism for incoming connections: only
	 * one process gets woken up, not the 'whole herd'.
	 * Since we do not 'race & poll' for established sockets
	 * anymore, the common case will execute the loop only once.
	*/
	for (;;) {
		FUNC3(FUNC7(sk), &wait,
					  TASK_INTERRUPTIBLE);
		if (timeo && FUNC8(&sk->sk_receive_queue)) {
			FUNC4(sk);
			timeo = FUNC5(timeo);
			FUNC2(sk);
		}
		err = 0;
		if (!FUNC8(&sk->sk_receive_queue))
			break;
		err = -EAGAIN;
		if (!timeo)
			break;
		err = FUNC9(timeo);
		if (FUNC6(current))
			break;
	}
	FUNC1(FUNC7(sk), &wait);
	return err;
}