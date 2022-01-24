#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  int u16 ;
struct TYPE_13__ {int /*<<< orphan*/  svm_cid; } ;
struct vsock_sock {int /*<<< orphan*/  pending_work; struct sock* listener; TYPE_6__ remote_addr; TYPE_6__ local_addr; } ;
struct TYPE_11__ {scalar_t__ size; } ;
struct TYPE_9__ {int /*<<< orphan*/  context; } ;
struct TYPE_8__ {int /*<<< orphan*/  context; } ;
struct TYPE_10__ {TYPE_2__ src; TYPE_1__ dst; } ;
struct vmci_transport_packet {scalar_t__ type; int proto; TYPE_4__ u; int /*<<< orphan*/  src_port; TYPE_3__ dg; int /*<<< orphan*/  dst_port; } ;
struct sock {int sk_state; scalar_t__ sk_ack_backlog; scalar_t__ sk_max_ack_backlog; int /*<<< orphan*/  sk_type; } ;
struct TYPE_14__ {scalar_t__ queue_pair_min_size; scalar_t__ queue_pair_max_size; TYPE_5__* notify_ops; void* queue_pair_size; void* consume_size; void* produce_size; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* process_request ) (struct sock*) ;} ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
#define  TCP_SYN_SENT 128 
 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_REQUEST ; 
 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_REQUEST2 ; 
 int VSOCK_PROTO_INVALID ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 TYPE_7__* FUNC9 (struct vsock_sock*) ; 
 int FUNC10 (int) ; 
 struct sock* FUNC11 (struct sock*,struct vmci_transport_packet*) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 (int*) ; 
 scalar_t__ FUNC14 (struct sock*,int*,int) ; 
 int FUNC15 (struct sock*,struct sock*,struct vmci_transport_packet*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct vmci_transport_packet*) ; 
 int FUNC18 (struct sock*,void*) ; 
 int FUNC19 (struct sock*,void*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,struct vmci_transport_packet*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,struct sock*) ; 
 struct vsock_sock* FUNC24 (struct sock*) ; 

__attribute__((used)) static int FUNC25(struct sock *sk,
				      struct vmci_transport_packet *pkt)
{
	struct sock *pending;
	struct vsock_sock *vpending;
	int err;
	u64 qp_size;
	bool old_request = false;
	bool old_pkt_proto = false;

	err = 0;

	/* Because we are in the listen state, we could be receiving a packet
	 * for ourself or any previous connection requests that we received.
	 * If it's the latter, we try to find a socket in our list of pending
	 * connections and, if we do, call the appropriate handler for the
	 * state that that socket is in.  Otherwise we try to service the
	 * connection request.
	 */
	pending = FUNC11(sk, pkt);
	if (pending) {
		FUNC2(pending);

		/* The local context ID may be out of date. */
		FUNC24(pending)->local_addr.svm_cid = pkt->dg.dst.context;

		switch (pending->sk_state) {
		case TCP_SYN_SENT:
			err = FUNC15(sk,
								    pending,
								    pkt);
			break;
		default:
			FUNC20(pending, pkt);
			err = -EINVAL;
		}

		if (err < 0)
			FUNC23(sk, pending);

		FUNC3(pending);
		FUNC16(pending);

		return err;
	}

	/* The listen state only accepts connection requests.  Reply with a
	 * reset unless we received a reset.
	 */

	if (!(pkt->type == VMCI_TRANSPORT_PACKET_TYPE_REQUEST ||
	      pkt->type == VMCI_TRANSPORT_PACKET_TYPE_REQUEST2)) {
		FUNC17(pkt);
		return -EINVAL;
	}

	if (pkt->u.size == 0) {
		FUNC17(pkt);
		return -EINVAL;
	}

	/* If this socket can't accommodate this connection request, we send a
	 * reset.  Otherwise we create and initialize a child socket and reply
	 * with a connection negotiation.
	 */
	if (sk->sk_ack_backlog >= sk->sk_max_ack_backlog) {
		FUNC17(pkt);
		return -ECONNREFUSED;
	}

	pending = FUNC0(FUNC6(sk), NULL, sk, GFP_KERNEL,
				 sk->sk_type, 0);
	if (!pending) {
		FUNC20(sk, pkt);
		return -ENOMEM;
	}

	vpending = FUNC24(pending);

	FUNC22(&vpending->local_addr, pkt->dg.dst.context,
			pkt->dst_port);
	FUNC22(&vpending->remote_addr, pkt->dg.src.context,
			pkt->src_port);

	/* If the proposed size fits within our min/max, accept it. Otherwise
	 * propose our own size.
	 */
	if (pkt->u.size >= FUNC9(vpending)->queue_pair_min_size &&
	    pkt->u.size <= FUNC9(vpending)->queue_pair_max_size) {
		qp_size = pkt->u.size;
	} else {
		qp_size = FUNC9(vpending)->queue_pair_size;
	}

	/* Figure out if we are using old or new requests based on the
	 * overrides pkt types sent by our peer.
	 */
	if (FUNC13(&old_pkt_proto)) {
		old_request = old_pkt_proto;
	} else {
		if (pkt->type == VMCI_TRANSPORT_PACKET_TYPE_REQUEST)
			old_request = true;
		else if (pkt->type == VMCI_TRANSPORT_PACKET_TYPE_REQUEST2)
			old_request = false;

	}

	if (old_request) {
		/* Handle a REQUEST (or override) */
		u16 version = VSOCK_PROTO_INVALID;
		if (FUNC14(
			pending, &version, true))
			err = FUNC18(pending, qp_size);
		else
			err = -EINVAL;

	} else {
		/* Handle a REQUEST2 (or override) */
		int proto_int = pkt->proto;
		int pos;
		u16 active_proto_version = 0;

		/* The list of possible protocols is the intersection of all
		 * protocols the client supports ... plus all the protocols we
		 * support.
		 */
		proto_int &= FUNC12();

		/* We choose the highest possible protocol version and use that
		 * one.
		 */
		pos = FUNC1(proto_int);
		if (pos) {
			active_proto_version = (1 << (pos - 1));
			if (FUNC14(
				pending, &active_proto_version, false))
				err = FUNC19(pending,
							qp_size,
							active_proto_version);
			else
				err = -EINVAL;

		} else {
			err = -EINVAL;
		}
	}

	if (err < 0) {
		FUNC20(sk, pkt);
		FUNC7(pending);
		err = FUNC10(err);
		goto out;
	}

	FUNC21(sk, pending);
	sk->sk_ack_backlog++;

	pending->sk_state = TCP_SYN_SENT;
	FUNC9(vpending)->produce_size =
		FUNC9(vpending)->consume_size = qp_size;
	FUNC9(vpending)->queue_pair_size = qp_size;

	FUNC9(vpending)->notify_ops->process_request(pending);

	/* We might never receive another message for this socket and it's not
	 * connected to any process, so we have to ensure it gets cleaned up
	 * ourself.  Our delayed work function will take care of that.  Note
	 * that we do not ever cancel this function since we have few
	 * guarantees about its state when calling cancel_delayed_work().
	 * Instead we hold a reference on the socket for that function and make
	 * it capable of handling cases where it needs to do nothing but
	 * release that reference.
	 */
	vpending->listener = sk;
	FUNC5(sk);
	FUNC5(pending);
	FUNC4(&vpending->pending_work, HZ);

out:
	return err;
}