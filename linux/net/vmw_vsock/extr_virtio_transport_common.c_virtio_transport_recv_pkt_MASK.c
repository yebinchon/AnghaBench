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
struct TYPE_4__ {int /*<<< orphan*/  svm_cid; } ;
struct vsock_sock {TYPE_2__ local_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  fwd_cnt; int /*<<< orphan*/  buf_alloc; int /*<<< orphan*/  flags; int /*<<< orphan*/  op; int /*<<< orphan*/  len; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  dst_cid; int /*<<< orphan*/  src_port; int /*<<< orphan*/  src_cid; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sockaddr_vm {int /*<<< orphan*/  svm_cid; int /*<<< orphan*/  svm_port; } ;
struct sock {int sk_state; int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;} ;

/* Variables and functions */
#define  TCP_CLOSING 131 
#define  TCP_ESTABLISHED 130 
#define  TCP_LISTEN 129 
#define  TCP_SYN_SENT 128 
 scalar_t__ VIRTIO_VSOCK_TYPE_STREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC13 (struct virtio_vsock_pkt*) ; 
 int FUNC14 (struct sock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  FUNC15 (struct sockaddr_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sock* FUNC16 (struct sockaddr_vm*) ; 
 struct sock* FUNC17 (struct sockaddr_vm*,struct sockaddr_vm*) ; 
 struct vsock_sock* FUNC18 (struct sock*) ; 

void FUNC19(struct virtio_vsock_pkt *pkt)
{
	struct sockaddr_vm src, dst;
	struct vsock_sock *vsk;
	struct sock *sk;
	bool space_available;

	FUNC15(&src, FUNC2(pkt->hdr.src_cid),
			FUNC1(pkt->hdr.src_port));
	FUNC15(&dst, FUNC2(pkt->hdr.dst_cid),
			FUNC1(pkt->hdr.dst_port));

	FUNC7(src.svm_cid, src.svm_port,
					dst.svm_cid, dst.svm_port,
					FUNC1(pkt->hdr.len),
					FUNC0(pkt->hdr.type),
					FUNC0(pkt->hdr.op),
					FUNC1(pkt->hdr.flags),
					FUNC1(pkt->hdr.buf_alloc),
					FUNC1(pkt->hdr.fwd_cnt));

	if (FUNC0(pkt->hdr.type) != VIRTIO_VSOCK_TYPE_STREAM) {
		(void)FUNC13(pkt);
		goto free_pkt;
	}

	/* The socket must be in connected or bound table
	 * otherwise send reset back
	 */
	sk = FUNC17(&src, &dst);
	if (!sk) {
		sk = FUNC16(&dst);
		if (!sk) {
			(void)FUNC13(pkt);
			goto free_pkt;
		}
	}

	vsk = FUNC18(sk);

	space_available = FUNC14(sk, pkt);

	FUNC3(sk);

	/* Update CID in case it has changed after a transport reset event */
	vsk->local_addr.svm_cid = dst.svm_cid;

	if (space_available)
		sk->sk_write_space(sk);

	switch (sk->sk_state) {
	case TCP_LISTEN:
		FUNC12(sk, pkt);
		FUNC8(pkt);
		break;
	case TCP_SYN_SENT:
		FUNC10(sk, pkt);
		FUNC8(pkt);
		break;
	case TCP_ESTABLISHED:
		FUNC9(sk, pkt);
		break;
	case TCP_CLOSING:
		FUNC11(sk, pkt);
		FUNC8(pkt);
		break;
	default:
		FUNC8(pkt);
		break;
	}
	FUNC4(sk);

	/* Release refcnt obtained when we fetched this socket out of the
	 * bound or connected list.
	 */
	FUNC5(sk);
	return;

free_pkt:
	FUNC8(pkt);
}