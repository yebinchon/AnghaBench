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
struct socket {struct sock* sk; } ;
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct rfcomm_dlc {int /*<<< orphan*/  flags; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {struct rfcomm_dlc* dlc; } ;

/* Variables and functions */
 int MSG_PEEK ; 
 int /*<<< orphan*/  RFCOMM_DEFER_SETUP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct socket*,struct msghdr*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_dlc*) ; 
 TYPE_1__* FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct socket *sock, struct msghdr *msg,
			       size_t size, int flags)
{
	struct sock *sk = sock->sk;
	struct rfcomm_dlc *d = FUNC7(sk)->dlc;
	int len;

	if (FUNC8(RFCOMM_DEFER_SETUP, &d->flags)) {
		FUNC5(d);
		return 0;
	}

	len = FUNC2(sock, msg, size, flags);

	FUNC3(sk);
	if (!(flags & MSG_PEEK) && len > 0)
		FUNC1(len, &sk->sk_rmem_alloc);

	if (FUNC0(&sk->sk_rmem_alloc) <= (sk->sk_rcvbuf >> 2))
		FUNC6(FUNC7(sk)->dlc);
	FUNC4(sk);

	return len;
}