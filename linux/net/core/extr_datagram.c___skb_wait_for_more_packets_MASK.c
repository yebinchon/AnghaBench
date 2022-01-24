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
struct TYPE_2__ {int /*<<< orphan*/  prev; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOTCONN ; 
 int RCV_SHUTDOWN ; 
 struct sk_buff const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ TCP_LISTEN ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  receiver_wake_function ; 
 long FUNC5 (long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int FUNC8 (struct sock*) ; 
 int FUNC9 (long) ; 
 int /*<<< orphan*/  wait ; 

int FUNC10(struct sock *sk, int *err, long *timeo_p,
				const struct sk_buff *skb)
{
	int error;
	FUNC0(wait, receiver_wake_function);

	FUNC4(FUNC7(sk), &wait, TASK_INTERRUPTIBLE);

	/* Socket errors? */
	error = FUNC8(sk);
	if (error)
		goto out_err;

	if (FUNC1(sk->sk_receive_queue.prev) != skb)
		goto out;

	/* Socket shut down? */
	if (sk->sk_shutdown & RCV_SHUTDOWN)
		goto out_noerr;

	/* Sequenced packets can come disconnected.
	 * If so we report the problem
	 */
	error = -ENOTCONN;
	if (FUNC2(sk) &&
	    !(sk->sk_state == TCP_ESTABLISHED || sk->sk_state == TCP_LISTEN))
		goto out_err;

	/* handle signals */
	if (FUNC6(current))
		goto interrupted;

	error = 0;
	*timeo_p = FUNC5(*timeo_p);
out:
	FUNC3(FUNC7(sk), &wait);
	return error;
interrupted:
	error = FUNC9(*timeo_p);
out_err:
	*err = error;
	goto out;
out_noerr:
	*err = 0;
	error = 1;
	goto out;
}