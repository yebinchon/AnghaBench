#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vsock_sock {int dummy; } ;
struct virtio_vsock_pkt_info {struct vsock_sock* vsk; int /*<<< orphan*/  type; int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_VSOCK_OP_REQUEST ; 
 int /*<<< orphan*/  VIRTIO_VSOCK_TYPE_STREAM ; 
 int FUNC0 (struct vsock_sock*,struct virtio_vsock_pkt_info*) ; 

int FUNC1(struct vsock_sock *vsk)
{
	struct virtio_vsock_pkt_info info = {
		.op = VIRTIO_VSOCK_OP_REQUEST,
		.type = VIRTIO_VSOCK_TYPE_STREAM,
		.vsk = vsk,
	};

	return FUNC0(vsk, &info);
}