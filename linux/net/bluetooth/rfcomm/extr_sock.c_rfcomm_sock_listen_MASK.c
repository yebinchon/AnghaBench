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
typedef  int u8 ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_4__ {int channel; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ BT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,int) ; 
 scalar_t__ BT_LISTEN ; 
 int EBADFD ; 
 int EINVAL ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_2__* FUNC4 (struct sock*) ; 
 TYPE_1__ rfcomm_sk_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	int err = 0;

	FUNC0("sk %p backlog %d", sk, backlog);

	FUNC2(sk);

	if (sk->sk_state != BT_BOUND) {
		err = -EBADFD;
		goto done;
	}

	if (sk->sk_type != SOCK_STREAM) {
		err = -EINVAL;
		goto done;
	}

	if (!FUNC4(sk)->channel) {
		bdaddr_t *src = &FUNC4(sk)->src;
		u8 channel;

		err = -EINVAL;

		FUNC5(&rfcomm_sk_list.lock);

		for (channel = 1; channel < 31; channel++)
			if (!FUNC1(channel, src)) {
				FUNC4(sk)->channel = channel;
				err = 0;
				break;
			}

		FUNC6(&rfcomm_sk_list.lock);

		if (err < 0)
			goto done;
	}

	sk->sk_max_ack_backlog = backlog;
	sk->sk_ack_backlog = 0;
	sk->sk_state = BT_LISTEN;

done:
	FUNC3(sk);
	return err;
}