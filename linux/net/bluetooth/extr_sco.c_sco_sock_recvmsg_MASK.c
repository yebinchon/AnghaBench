#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct sco_pinfo {int /*<<< orphan*/  setting; TYPE_1__* conn; } ;
struct msghdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  hcon; } ;

/* Variables and functions */
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT2 ; 
 int /*<<< orphan*/  BT_SK_DEFER_SETUP ; 
 TYPE_2__* FUNC0 (struct sock*) ; 
 int FUNC1 (struct socket*,struct msghdr*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sco_pinfo* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, struct msghdr *msg,
			    size_t len, int flags)
{
	struct sock *sk = sock->sk;
	struct sco_pinfo *pi = FUNC5(sk);

	FUNC2(sk);

	if (sk->sk_state == BT_CONNECT2 &&
	    FUNC6(BT_SK_DEFER_SETUP, &FUNC0(sk)->flags)) {
		FUNC4(pi->conn->hcon, pi->setting);
		sk->sk_state = BT_CONFIG;

		FUNC3(sk);
		return 0;
	}

	FUNC3(sk);

	return FUNC1(sock, msg, len, flags);
}