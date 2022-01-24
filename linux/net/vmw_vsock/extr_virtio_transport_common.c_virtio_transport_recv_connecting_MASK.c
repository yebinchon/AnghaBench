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
struct vsock_sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  op; } ;
struct virtio_vsock_pkt {TYPE_2__ hdr; } ;
struct sock {int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;TYPE_1__* sk_socket; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINVAL ; 
 int EPROTO ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
#define  VIRTIO_VSOCK_OP_INVALID 130 
#define  VIRTIO_VSOCK_OP_RESPONSE 129 
#define  VIRTIO_VSOCK_OP_RST 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct vsock_sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct vsock_sock*) ; 
 struct vsock_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static int
FUNC6(struct sock *sk,
				 struct virtio_vsock_pkt *pkt)
{
	struct vsock_sock *vsk = FUNC5(sk);
	int err;
	int skerr;

	switch (FUNC0(pkt->hdr.op)) {
	case VIRTIO_VSOCK_OP_RESPONSE:
		sk->sk_state = TCP_ESTABLISHED;
		sk->sk_socket->state = SS_CONNECTED;
		FUNC4(vsk);
		sk->sk_state_change(sk);
		break;
	case VIRTIO_VSOCK_OP_INVALID:
		break;
	case VIRTIO_VSOCK_OP_RST:
		skerr = ECONNRESET;
		err = 0;
		goto destroy;
	default:
		skerr = EPROTO;
		err = -EINVAL;
		goto destroy;
	}
	return 0;

destroy:
	FUNC3(vsk, pkt);
	sk->sk_state = TCP_CLOSE;
	sk->sk_err = skerr;
	sk->sk_error_report(sk);
	return err;
}