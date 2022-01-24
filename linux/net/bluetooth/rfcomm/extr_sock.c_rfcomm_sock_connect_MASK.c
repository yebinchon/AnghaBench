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
struct sockaddr_rc {int /*<<< orphan*/  rc_channel; int /*<<< orphan*/  rc_bdaddr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; } ;
struct rfcomm_dlc {int /*<<< orphan*/  role_switch; int /*<<< orphan*/  sec_level; } ;
struct TYPE_2__ {int /*<<< orphan*/  src; int /*<<< orphan*/  role_switch; int /*<<< orphan*/  sec_level; int /*<<< orphan*/  channel; int /*<<< orphan*/  dst; struct rfcomm_dlc* dlc; } ;

/* Variables and functions */
 scalar_t__ AF_BLUETOOTH ; 
 scalar_t__ BT_BOUND ; 
 scalar_t__ BT_CONNECT ; 
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 scalar_t__ BT_OPEN ; 
 int EBADFD ; 
 int EINVAL ; 
 int O_NONBLOCK ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct rfcomm_dlc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, struct sockaddr *addr, int alen, int flags)
{
	struct sockaddr_rc *sa = (struct sockaddr_rc *) addr;
	struct sock *sk = sock->sk;
	struct rfcomm_dlc *d = FUNC6(sk)->dlc;
	int err = 0;

	FUNC0("sk %p", sk);

	if (alen < sizeof(struct sockaddr_rc) ||
	    addr->sa_family != AF_BLUETOOTH)
		return -EINVAL;

	FUNC3(sk);

	if (sk->sk_state != BT_OPEN && sk->sk_state != BT_BOUND) {
		err = -EBADFD;
		goto done;
	}

	if (sk->sk_type != SOCK_STREAM) {
		err = -EINVAL;
		goto done;
	}

	sk->sk_state = BT_CONNECT;
	FUNC1(&FUNC6(sk)->dst, &sa->rc_bdaddr);
	FUNC6(sk)->channel = sa->rc_channel;

	d->sec_level = FUNC6(sk)->sec_level;
	d->role_switch = FUNC6(sk)->role_switch;

	err = FUNC5(d, &FUNC6(sk)->src, &sa->rc_bdaddr,
			      sa->rc_channel);
	if (!err)
		err = FUNC2(sk, BT_CONNECTED,
				FUNC7(sk, flags & O_NONBLOCK));

done:
	FUNC4(sk);
	return err;
}