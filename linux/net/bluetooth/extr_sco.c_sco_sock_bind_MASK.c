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
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ AF_BLUETOOTH ; 
 scalar_t__ BT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int /*<<< orphan*/ *) ; 
 scalar_t__ BT_OPEN ; 
 int EBADFD ; 
 int EINVAL ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct sockaddr *addr,
			 int addr_len)
{
	struct sockaddr_sco *sa = (struct sockaddr_sco *) addr;
	struct sock *sk = sock->sk;
	int err = 0;

	if (!addr || addr_len < sizeof(struct sockaddr_sco) ||
	    addr->sa_family != AF_BLUETOOTH)
		return -EINVAL;

	FUNC0("sk %p %pMR", sk, &sa->sco_bdaddr);

	FUNC2(sk);

	if (sk->sk_state != BT_OPEN) {
		err = -EBADFD;
		goto done;
	}

	if (sk->sk_type != SOCK_SEQPACKET) {
		err = -EINVAL;
		goto done;
	}

	FUNC1(&FUNC4(sk)->src, &sa->sco_bdaddr);

	sk->sk_state = BT_BOUND;

done:
	FUNC3(sk);
	return err;
}