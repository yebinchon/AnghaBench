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
struct sockaddr_sco {int /*<<< orphan*/  sco_bdaddr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 scalar_t__ AF_BLUETOOTH ; 
 scalar_t__ BT_BOUND ; 
 int /*<<< orphan*/  BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*) ; 
 scalar_t__ BT_OPEN ; 
 int EBADFD ; 
 int EINVAL ; 
 int O_NONBLOCK ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*) ; 
 TYPE_1__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, struct sockaddr *addr, int alen, int flags)
{
	struct sockaddr_sco *sa = (struct sockaddr_sco *) addr;
	struct sock *sk = sock->sk;
	int err;

	FUNC0("sk %p", sk);

	if (alen < sizeof(struct sockaddr_sco) ||
	    addr->sa_family != AF_BLUETOOTH)
		return -EINVAL;

	if (sk->sk_state != BT_OPEN && sk->sk_state != BT_BOUND)
		return -EBADFD;

	if (sk->sk_type != SOCK_SEQPACKET)
		return -EINVAL;

	FUNC3(sk);

	/* Set destination address and psm */
	FUNC1(&FUNC6(sk)->dst, &sa->sco_bdaddr);

	err = FUNC5(sk);
	if (err)
		goto done;

	err = FUNC2(sk, BT_CONNECTED,
				 FUNC7(sk, flags & O_NONBLOCK));

done:
	FUNC4(sk);
	return err;
}