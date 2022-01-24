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
struct vsock_sock {int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  local_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  src_port; int /*<<< orphan*/  src_cid; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  dst_cid; int /*<<< orphan*/  op; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_ack_backlog; int /*<<< orphan*/  sk_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 scalar_t__ VIRTIO_VSOCK_OP_REQUEST ; 
 struct sock* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct vsock_sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC10 (struct vsock_sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct vsock_sock*) ; 
 struct vsock_sock* FUNC14 (struct sock*) ; 

__attribute__((used)) static int
FUNC15(struct sock *sk, struct virtio_vsock_pkt *pkt)
{
	struct vsock_sock *vsk = FUNC14(sk);
	struct vsock_sock *vchild;
	struct sock *child;

	if (FUNC1(pkt->hdr.op) != VIRTIO_VSOCK_OP_REQUEST) {
		FUNC9(vsk, pkt);
		return -EINVAL;
	}

	if (FUNC6(sk)) {
		FUNC9(vsk, pkt);
		return -ENOMEM;
	}

	child = FUNC0(FUNC7(sk), NULL, sk, GFP_KERNEL,
			       sk->sk_type, 0);
	if (!child) {
		FUNC9(vsk, pkt);
		return -ENOMEM;
	}

	sk->sk_ack_backlog++;

	FUNC4(child, SINGLE_DEPTH_NESTING);

	child->sk_state = TCP_ESTABLISHED;

	vchild = FUNC14(child);
	FUNC11(&vchild->local_addr, FUNC3(pkt->hdr.dst_cid),
			FUNC2(pkt->hdr.dst_port));
	FUNC11(&vchild->remote_addr, FUNC3(pkt->hdr.src_cid),
			FUNC2(pkt->hdr.src_port));

	FUNC13(vchild);
	FUNC12(sk, child);
	FUNC10(vchild, pkt);

	FUNC5(child);

	sk->sk_data_ready(sk);
	return 0;
}