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
struct sock {int sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC4 (long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC13(struct sock *sk, long timeo,
				  struct sk_buff *last, unsigned int last_len,
				  bool freezable)
{
	struct sk_buff *tail;
	FUNC0(wait);

	FUNC11(sk);

	for (;;) {
		FUNC3(FUNC8(sk), &wait, TASK_INTERRUPTIBLE);

		tail = FUNC9(&sk->sk_receive_queue);
		if (tail != last ||
		    (tail && tail->len != last_len) ||
		    sk->sk_err ||
		    (sk->sk_shutdown & RCV_SHUTDOWN) ||
		    FUNC5(current) ||
		    !timeo)
			break;

		FUNC7(SOCKWQ_ASYNC_WAITDATA, sk);
		FUNC12(sk);
		if (freezable)
			timeo = FUNC2(timeo);
		else
			timeo = FUNC4(timeo);
		FUNC11(sk);

		if (FUNC10(sk, SOCK_DEAD))
			break;

		FUNC6(SOCKWQ_ASYNC_WAITDATA, sk);
	}

	FUNC1(FUNC8(sk), &wait);
	FUNC12(sk);
	return timeo;
}