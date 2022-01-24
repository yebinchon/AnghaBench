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
struct vsock_sock {int /*<<< orphan*/  peer_shutdown; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  op; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_DONE ; 
#define  VIRTIO_VSOCK_OP_CREDIT_UPDATE 131 
#define  VIRTIO_VSOCK_OP_RST 130 
#define  VIRTIO_VSOCK_OP_RW 129 
#define  VIRTIO_VSOCK_OP_SHUTDOWN 128 
 int VIRTIO_VSOCK_SHUTDOWN_RCV ; 
 int VIRTIO_VSOCK_SHUTDOWN_SEND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct vsock_sock*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC8 (struct vsock_sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC9 (struct vsock_sock*,int /*<<< orphan*/ *) ; 
 struct vsock_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct vsock_sock*) ; 

__attribute__((used)) static int
FUNC12(struct sock *sk,
				struct virtio_vsock_pkt *pkt)
{
	struct vsock_sock *vsk = FUNC10(sk);
	int err = 0;

	switch (FUNC0(pkt->hdr.op)) {
	case VIRTIO_VSOCK_OP_RW:
		FUNC8(vsk, pkt);
		sk->sk_data_ready(sk);
		return err;
	case VIRTIO_VSOCK_OP_CREDIT_UPDATE:
		sk->sk_write_space(sk);
		break;
	case VIRTIO_VSOCK_OP_SHUTDOWN:
		if (FUNC1(pkt->hdr.flags) & VIRTIO_VSOCK_SHUTDOWN_RCV)
			vsk->peer_shutdown |= RCV_SHUTDOWN;
		if (FUNC1(pkt->hdr.flags) & VIRTIO_VSOCK_SHUTDOWN_SEND)
			vsk->peer_shutdown |= SEND_SHUTDOWN;
		if (vsk->peer_shutdown == SHUTDOWN_MASK &&
		    FUNC11(vsk) <= 0 &&
		    !FUNC2(sk, SOCK_DONE)) {
			(void)FUNC9(vsk, NULL);

			FUNC6(vsk, true);
		}
		if (FUNC1(pkt->hdr.flags))
			sk->sk_state_change(sk);
		break;
	case VIRTIO_VSOCK_OP_RST:
		FUNC6(vsk, true);
		break;
	default:
		err = -EINVAL;
		break;
	}

	FUNC7(pkt);
	return err;
}