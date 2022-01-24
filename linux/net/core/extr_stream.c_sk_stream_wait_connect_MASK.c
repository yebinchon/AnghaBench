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
struct task_struct {int dummy; } ;
struct sock {int sk_state; int /*<<< orphan*/  sk_write_pending; int /*<<< orphan*/  sk_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EPIPE ; 
 int TCPF_CLOSE_WAIT ; 
 int TCPF_ESTABLISHED ; 
 int TCPF_SYN_RECV ; 
 int TCPF_SYN_SENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sock*) ; 
 int FUNC7 (long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

int FUNC8(struct sock *sk, long *timeo_p)
{
	FUNC0(wait, woken_wake_function);
	struct task_struct *tsk = current;
	int done;

	do {
		int err = FUNC6(sk);
		if (err)
			return err;
		if ((1 << sk->sk_state) & ~(TCPF_SYN_SENT | TCPF_SYN_RECV))
			return -EPIPE;
		if (!*timeo_p)
			return -EAGAIN;
		if (FUNC3(tsk))
			return FUNC7(*timeo_p);

		FUNC1(FUNC4(sk), &wait);
		sk->sk_write_pending++;
		done = FUNC5(sk, timeo_p,
				     !sk->sk_err &&
				     !((1 << sk->sk_state) &
				       ~(TCPF_ESTABLISHED | TCPF_CLOSE_WAIT)), &wait);
		FUNC2(FUNC4(sk), &wait);
		sk->sk_write_pending--;
	} while (!done);
	return 0;
}