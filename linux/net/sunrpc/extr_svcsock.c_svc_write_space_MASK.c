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
struct TYPE_2__ {int /*<<< orphan*/  xpt_flags; } ;
struct svc_sock {TYPE_1__ sk_xprt; int /*<<< orphan*/  (* sk_owspace ) (struct sock*) ;} ;
struct sock {scalar_t__ sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_BUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,struct svc_sock*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct svc_sock	*svsk = (struct svc_sock *)(sk->sk_user_data);

	if (svsk) {
		FUNC0("svc: socket %p(inet %p), write_space busy=%d\n",
			svsk, sk, FUNC4(XPT_BUSY, &svsk->sk_xprt.xpt_flags));

		/* Refer to svc_setup_socket() for details. */
		FUNC1();
		svsk->sk_owspace(sk);
		FUNC3(&svsk->sk_xprt);
	}
}