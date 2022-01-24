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
struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {int /*<<< orphan*/  tx_lock; void* peer_fwd_cnt; void* peer_buf_alloc; } ;
struct TYPE_2__ {int /*<<< orphan*/  fwd_cnt; int /*<<< orphan*/  buf_alloc; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vsock_sock*) ; 
 struct vsock_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static bool FUNC5(struct sock *sk,
					  struct virtio_vsock_pkt *pkt)
{
	struct vsock_sock *vsk = FUNC4(sk);
	struct virtio_vsock_sock *vvs = vsk->trans;
	bool space_available;

	/* buf_alloc and fwd_cnt is always included in the hdr */
	FUNC1(&vvs->tx_lock);
	vvs->peer_buf_alloc = FUNC0(pkt->hdr.buf_alloc);
	vvs->peer_fwd_cnt = FUNC0(pkt->hdr.fwd_cnt);
	space_available = FUNC3(vsk);
	FUNC2(&vvs->tx_lock);
	return space_available;
}