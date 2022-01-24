#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  svm_port; int /*<<< orphan*/  svm_cid; } ;
struct vsock_sock {int ignore_connecting_rst; TYPE_5__ remote_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  context; } ;
struct TYPE_10__ {TYPE_3__ src; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  handle; } ;
struct vmci_transport_packet {int type; int /*<<< orphan*/  src_port; TYPE_4__ dg; TYPE_2__ u; } ;
struct sock {int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;TYPE_1__* sk_socket; } ;
struct TYPE_12__ {int /*<<< orphan*/  detach_sub_id; int /*<<< orphan*/  consume_size; int /*<<< orphan*/  produce_size; int /*<<< orphan*/  qpair; int /*<<< orphan*/  qp_handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINVAL ; 
 int EPROTO ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  VMCI_INVALID_ID ; 
#define  VMCI_TRANSPORT_PACKET_TYPE_ATTACH 132 
#define  VMCI_TRANSPORT_PACKET_TYPE_INVALID 131 
#define  VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE 130 
#define  VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE2 129 
#define  VMCI_TRANSPORT_PACKET_TYPE_RST 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC4 (struct vsock_sock*) ; 
 int FUNC5 (struct sock*,struct vmci_transport_packet*) ; 
 int FUNC6 (struct sock*,struct vmci_transport_packet*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct vmci_transport_packet*) ; 
 int /*<<< orphan*/  FUNC8 (struct vsock_sock*) ; 
 struct vsock_sock* FUNC9 (struct sock*) ; 

__attribute__((used)) static int
FUNC10(struct sock *sk,
				      struct vmci_transport_packet *pkt)
{
	struct vsock_sock *vsk;
	int err;
	int skerr;

	vsk = FUNC9(sk);

	switch (pkt->type) {
	case VMCI_TRANSPORT_PACKET_TYPE_ATTACH:
		if (FUNC3(pkt->u.handle) ||
		    !FUNC2(pkt->u.handle,
					  FUNC4(vsk)->qp_handle)) {
			skerr = EPROTO;
			err = -EINVAL;
			goto destroy;
		}

		/* Signify the socket is connected and wakeup the waiter in
		 * connect(). Also place the socket in the connected table for
		 * accounting (it can already be found since it's in the bound
		 * table).
		 */
		sk->sk_state = TCP_ESTABLISHED;
		sk->sk_socket->state = SS_CONNECTED;
		FUNC8(vsk);
		sk->sk_state_change(sk);

		break;
	case VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE:
	case VMCI_TRANSPORT_PACKET_TYPE_NEGOTIATE2:
		if (pkt->u.size == 0
		    || pkt->dg.src.context != vsk->remote_addr.svm_cid
		    || pkt->src_port != vsk->remote_addr.svm_port
		    || !FUNC3(FUNC4(vsk)->qp_handle)
		    || FUNC4(vsk)->qpair
		    || FUNC4(vsk)->produce_size != 0
		    || FUNC4(vsk)->consume_size != 0
		    || FUNC4(vsk)->detach_sub_id != VMCI_INVALID_ID) {
			skerr = EPROTO;
			err = -EINVAL;

			goto destroy;
		}

		err = FUNC6(sk, pkt);
		if (err) {
			skerr = -err;
			goto destroy;
		}

		break;
	case VMCI_TRANSPORT_PACKET_TYPE_INVALID:
		err = FUNC5(sk, pkt);
		if (err) {
			skerr = -err;
			goto destroy;
		}

		break;
	case VMCI_TRANSPORT_PACKET_TYPE_RST:
		/* Older versions of the linux code (WS 6.5 / ESX 4.0) used to
		 * continue processing here after they sent an INVALID packet.
		 * This meant that we got a RST after the INVALID. We ignore a
		 * RST after an INVALID. The common code doesn't send the RST
		 * ... so we can hang if an old version of the common code
		 * fails between getting a REQUEST and sending an OFFER back.
		 * Not much we can do about it... except hope that it doesn't
		 * happen.
		 */
		if (vsk->ignore_connecting_rst) {
			vsk->ignore_connecting_rst = false;
		} else {
			skerr = ECONNRESET;
			err = 0;
			goto destroy;
		}

		break;
	default:
		/* Close and cleanup the connection. */
		skerr = EPROTO;
		err = -EINVAL;
		goto destroy;
	}

	return 0;

destroy:
	FUNC7(sk, pkt);

	sk->sk_state = TCP_CLOSE;
	sk->sk_err = skerr;
	sk->sk_error_report(sk);
	return err;
}