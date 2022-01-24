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
struct sock {scalar_t__ sk_state; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct request_sock {int /*<<< orphan*/  rsk_listener; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 scalar_t__ TCP_LISTEN ; 
 scalar_t__ TCP_NEW_SYN_RECV ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct request_sock*) ; 
 struct request_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 

int FUNC18(struct sock *sk, int err)
{
	if (!FUNC9(sk)) {
		if (sk->sk_state == TCP_NEW_SYN_RECV) {
			struct request_sock *req = FUNC4(sk);

			FUNC5();
			FUNC3(req->rsk_listener, req);
			FUNC6();
			return 0;
		}
		return -EOPNOTSUPP;
	}

	/* Don't race with userspace socket closes such as tcp_close. */
	FUNC7(sk);

	if (sk->sk_state == TCP_LISTEN) {
		FUNC16(sk, TCP_CLOSE);
		FUNC2(sk);
	}

	/* Don't race with BH socket closes such as inet_csk_listen_stop. */
	FUNC5();
	FUNC0(sk);

	if (!FUNC11(sk, SOCK_DEAD)) {
		sk->sk_err = err;
		/* This barrier is coupled with smp_rmb() in tcp_poll() */
		FUNC10();
		sk->sk_error_report(sk);
		if (FUNC14(sk->sk_state))
			FUNC15(sk, GFP_ATOMIC);
		FUNC13(sk);
	}

	FUNC1(sk);
	FUNC6();
	FUNC17(sk);
	FUNC8(sk);
	return 0;
}