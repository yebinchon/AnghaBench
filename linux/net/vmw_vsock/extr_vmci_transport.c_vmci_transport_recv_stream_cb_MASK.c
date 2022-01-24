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
struct TYPE_12__ {int /*<<< orphan*/  svm_cid; } ;
struct vsock_sock {TYPE_5__ local_addr; } ;
struct vmci_transport_recv_pkt_info {int /*<<< orphan*/  work; int /*<<< orphan*/  pkt; struct sock* sk; } ;
struct TYPE_10__ {int /*<<< orphan*/  context; } ;
struct TYPE_9__ {int /*<<< orphan*/  context; } ;
struct TYPE_11__ {TYPE_3__ src; TYPE_2__ dst; } ;
struct vmci_transport_packet {scalar_t__ type; TYPE_4__ dg; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  src_port; } ;
struct TYPE_8__ {scalar_t__ resource; int /*<<< orphan*/  context; } ;
struct vmci_datagram {TYPE_1__ src; } ;
struct sockaddr_vm {int /*<<< orphan*/  svm_cid; } ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_14__ {TYPE_6__* notify_ops; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* handle_notify_pkt ) (struct sock*,struct vmci_transport_packet*,int,struct sockaddr_vm*,struct sockaddr_vm*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int FUNC1 (struct vmci_datagram*) ; 
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_ERROR_NO_ACCESS ; 
 int VMCI_ERROR_NO_MEM ; 
 int VMCI_SUCCESS ; 
 scalar_t__ VMCI_TRANSPORT_PACKET_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct vmci_transport_recv_pkt_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct vmci_transport_packet*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct vmci_transport_packet*,int,struct sockaddr_vm*,struct sockaddr_vm*,int*) ; 
 TYPE_7__* FUNC11 (struct vsock_sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct vsock_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmci_transport_recv_pkt_work ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr_vm*,struct sockaddr_vm*) ; 
 scalar_t__ FUNC15 (struct sockaddr_vm*,struct sockaddr_vm*,struct vmci_transport_packet*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sockaddr_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC18 (struct sockaddr_vm*) ; 
 struct sock* FUNC19 (struct sockaddr_vm*,struct sockaddr_vm*) ; 
 struct vsock_sock* FUNC20 (struct sock*) ; 

__attribute__((used)) static int FUNC21(void *data, struct vmci_datagram *dg)
{
	struct sock *sk;
	struct sockaddr_vm dst;
	struct sockaddr_vm src;
	struct vmci_transport_packet *pkt;
	struct vsock_sock *vsk;
	bool bh_process_pkt;
	int err;

	sk = NULL;
	err = VMCI_SUCCESS;
	bh_process_pkt = false;

	/* Ignore incoming packets from contexts without sockets, or resources
	 * that aren't vsock implementations.
	 */

	if (!FUNC16(dg->src.context, -1)
	    || FUNC13(dg->src.context) != dg->src.resource)
		return VMCI_ERROR_NO_ACCESS;

	if (FUNC1(dg) < sizeof(*pkt))
		/* Drop datagrams that do not contain full VSock packets. */
		return VMCI_ERROR_INVALID_ARGS;

	pkt = (struct vmci_transport_packet *)dg;

	/* Find the socket that should handle this packet.  First we look for a
	 * connected socket and if there is none we look for a socket bound to
	 * the destintation address.
	 */
	FUNC17(&src, pkt->dg.src.context, pkt->src_port);
	FUNC17(&dst, pkt->dg.dst.context, pkt->dst_port);

	sk = FUNC19(&src, &dst);
	if (!sk) {
		sk = FUNC18(&dst);
		if (!sk) {
			/* We could not find a socket for this specified
			 * address.  If this packet is a RST, we just drop it.
			 * If it is another packet, we send a RST.  Note that
			 * we do not send a RST reply to RSTs so that we do not
			 * continually send RSTs between two endpoints.
			 *
			 * Note that since this is a reply, dst is src and src
			 * is dst.
			 */
			if (FUNC15(&dst, &src, pkt) < 0)
				FUNC6("unable to send reset\n");

			err = VMCI_ERROR_NOT_FOUND;
			goto out;
		}
	}

	/* If the received packet type is beyond all types known to this
	 * implementation, reply with an invalid message.  Hopefully this will
	 * help when implementing backwards compatibility in the future.
	 */
	if (pkt->type >= VMCI_TRANSPORT_PACKET_TYPE_MAX) {
		FUNC14(&dst, &src);
		err = VMCI_ERROR_INVALID_ARGS;
		goto out;
	}

	/* This handler is privileged when this module is running on the host.
	 * We will get datagram connect requests from all endpoints (even VMs
	 * that are in a restricted context). If we get one from a restricted
	 * context then the destination socket must be trusted.
	 *
	 * NOTE: We access the socket struct without holding the lock here.
	 * This is ok because the field we are interested is never modified
	 * outside of the create and destruct socket functions.
	 */
	vsk = FUNC20(sk);
	if (!FUNC12(vsk, pkt->dg.src.context)) {
		err = VMCI_ERROR_NO_ACCESS;
		goto out;
	}

	/* We do most everything in a work queue, but let's fast path the
	 * notification of reads and writes to help data transfer performance.
	 * We can only do this if there is no process context code executing
	 * for this socket since that may change the state.
	 */
	FUNC2(sk);

	if (!FUNC8(sk)) {
		/* The local context ID may be out of date, update it. */
		vsk->local_addr.svm_cid = dst.svm_cid;

		if (sk->sk_state == TCP_ESTABLISHED)
			FUNC11(vsk)->notify_ops->handle_notify_pkt(
					sk, pkt, true, &dst, &src,
					&bh_process_pkt);
	}

	FUNC3(sk);

	if (!bh_process_pkt) {
		struct vmci_transport_recv_pkt_info *recv_pkt_info;

		recv_pkt_info = FUNC4(sizeof(*recv_pkt_info), GFP_ATOMIC);
		if (!recv_pkt_info) {
			if (FUNC15(&dst, &src, pkt) < 0)
				FUNC6("unable to send reset\n");

			err = VMCI_ERROR_NO_MEM;
			goto out;
		}

		recv_pkt_info->sk = sk;
		FUNC5(&recv_pkt_info->pkt, pkt, sizeof(recv_pkt_info->pkt));
		FUNC0(&recv_pkt_info->work, vmci_transport_recv_pkt_work);

		FUNC7(&recv_pkt_info->work);
		/* Clear sk so that the reference count incremented by one of
		 * the Find functions above is not decremented below.  We need
		 * that reference count for the packet handler we've scheduled
		 * to run.
		 */
		sk = NULL;
	}

out:
	if (sk)
		FUNC9(sk);

	return err;
}