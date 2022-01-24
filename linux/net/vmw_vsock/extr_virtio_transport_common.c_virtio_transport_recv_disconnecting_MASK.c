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
struct vsock_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  op; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_VSOCK_OP_RST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vsock_sock*,int) ; 
 struct vsock_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static void
FUNC3(struct sock *sk,
				    struct virtio_vsock_pkt *pkt)
{
	struct vsock_sock *vsk = FUNC2(sk);

	if (FUNC0(pkt->hdr.op) == VIRTIO_VSOCK_OP_RST)
		FUNC1(vsk, true);
}