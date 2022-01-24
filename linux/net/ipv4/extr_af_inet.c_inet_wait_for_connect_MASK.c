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
struct sock {int sk_write_pending; int sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int TCPF_SYN_RECV ; 
 int TCPF_SYN_SENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 
 long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  woken_wake_function ; 

__attribute__((used)) static long FUNC8(struct sock *sk, long timeo, int writebias)
{
	FUNC0(wait, woken_wake_function);

	FUNC1(FUNC6(sk), &wait);
	sk->sk_write_pending += writebias;

	/* Basic assumption: if someone sets sk->sk_err, he _must_
	 * change state of the socket from TCP_SYN_*.
	 * Connect() does not allow to get error notifications
	 * without closing the socket.
	 */
	while ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {
		FUNC3(sk);
		timeo = FUNC7(&wait, TASK_INTERRUPTIBLE, timeo);
		FUNC2(sk);
		if (FUNC5(current) || !timeo)
			break;
	}
	FUNC4(FUNC6(sk), &wait);
	sk->sk_write_pending -= writebias;
	return timeo;
}