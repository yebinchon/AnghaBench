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
struct sock {int sk_state; int sk_shutdown; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_receive_queue; } ;
struct iucv_sock {scalar_t__ transport; scalar_t__ path; } ;
struct iucv_message {scalar_t__ tag; scalar_t__ class; } ;
struct TYPE_2__ {int (* message_send ) (scalar_t__,struct iucv_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ;int (* path_quiesce ) (scalar_t__,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_IUCV_FLAG_SHT ; 
 scalar_t__ AF_IUCV_TRANS_IUCV ; 
 int ECONNRESET ; 
 int EINVAL ; 
 int ENOTCONN ; 
#define  IUCV_CLOSED 131 
#define  IUCV_CLOSING 130 
#define  IUCV_DISCONN 129 
 int /*<<< orphan*/  IUCV_IPRMDATA ; 
#define  IUCV_LISTEN 128 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 scalar_t__ iprm_shutdown ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 struct iucv_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* pr_iucv ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__,struct iucv_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct socket *sock, int how)
{
	struct sock *sk = sock->sk;
	struct iucv_sock *iucv = FUNC1(sk);
	struct iucv_message txmsg;
	int err = 0;

	how++;

	if ((how & ~SHUTDOWN_MASK) || !how)
		return -EINVAL;

	FUNC2(sk);
	switch (sk->sk_state) {
	case IUCV_LISTEN:
	case IUCV_DISCONN:
	case IUCV_CLOSING:
	case IUCV_CLOSED:
		err = -ENOTCONN;
		goto fail;
	default:
		break;
	}

	if (how == SEND_SHUTDOWN || how == SHUTDOWN_MASK) {
		if (iucv->transport == AF_IUCV_TRANS_IUCV) {
			txmsg.class = 0;
			txmsg.tag = 0;
			err = pr_iucv->message_send(iucv->path, &txmsg,
				IUCV_IPRMDATA, 0, (void *) iprm_shutdown, 8);
			if (err) {
				switch (err) {
				case 1:
					err = -ENOTCONN;
					break;
				case 2:
					err = -ECONNRESET;
					break;
				default:
					err = -ENOTCONN;
					break;
				}
			}
		} else
			FUNC0(sk, AF_IUCV_FLAG_SHT);
	}

	sk->sk_shutdown |= how;
	if (how == RCV_SHUTDOWN || how == SHUTDOWN_MASK) {
		if ((iucv->transport == AF_IUCV_TRANS_IUCV) &&
		    iucv->path) {
			err = pr_iucv->path_quiesce(iucv->path, NULL);
			if (err)
				err = -ENOTCONN;
/*			skb_queue_purge(&sk->sk_receive_queue); */
		}
		FUNC4(&sk->sk_receive_queue);
	}

	/* Wake up anyone sleeping in poll */
	sk->sk_state_change(sk);

fail:
	FUNC3(sk);
	return err;
}