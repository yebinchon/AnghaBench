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
struct sock {int sk_shutdown; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_write_pending; scalar_t__ sk_err; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EPIPE ; 
 int HZ ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,long*,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (long) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  woken_wake_function ; 

int FUNC12(struct sock *sk, long *timeo_p)
{
	int err = 0;
	long vm_wait = 0;
	long current_timeo = *timeo_p;
	FUNC0(wait, woken_wake_function);

	if (FUNC9(sk))
		current_timeo = vm_wait = (FUNC2() % (HZ / 5)) + 2;

	FUNC1(FUNC8(sk), &wait);

	while (1) {
		FUNC7(SOCKWQ_ASYNC_NOSPACE, sk);

		if (sk->sk_err || (sk->sk_shutdown & SEND_SHUTDOWN))
			goto do_error;
		if (!*timeo_p)
			goto do_eagain;
		if (FUNC5(current))
			goto do_interrupted;
		FUNC6(SOCKWQ_ASYNC_NOSPACE, sk);
		if (FUNC9(sk) && !vm_wait)
			break;

		FUNC4(SOCK_NOSPACE, &sk->sk_socket->flags);
		sk->sk_write_pending++;
		FUNC10(sk, &current_timeo, sk->sk_err ||
						  (sk->sk_shutdown & SEND_SHUTDOWN) ||
						  (FUNC9(sk) &&
						  !vm_wait), &wait);
		sk->sk_write_pending--;

		if (vm_wait) {
			vm_wait -= current_timeo;
			current_timeo = *timeo_p;
			if (current_timeo != MAX_SCHEDULE_TIMEOUT &&
			    (current_timeo -= vm_wait) < 0)
				current_timeo = 0;
			vm_wait = 0;
		}
		*timeo_p = current_timeo;
	}
out:
	FUNC3(FUNC8(sk), &wait);
	return err;

do_error:
	err = -EPIPE;
	goto out;
do_eagain:
	/* Make sure that whenever EAGAIN is returned, EPOLLOUT event can
	 * be generated later.
	 * When TCP receives ACK packets that make room, tcp_check_space()
	 * only calls tcp_new_space() if SOCK_NOSPACE is set.
	 */
	FUNC4(SOCK_NOSPACE, &sk->sk_socket->flags);
	err = -EAGAIN;
	goto out;
do_interrupted:
	err = FUNC11(*timeo_p);
	goto out;
}