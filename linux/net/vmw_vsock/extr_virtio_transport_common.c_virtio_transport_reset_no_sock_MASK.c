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
struct virtio_vsock_pkt_info {scalar_t__ op; scalar_t__ type; int reply; } ;
struct TYPE_2__ {int /*<<< orphan*/  src_port; int /*<<< orphan*/  src_cid; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  dst_cid; int /*<<< orphan*/  op; int /*<<< orphan*/  type; } ;
struct virtio_vsock_pkt {TYPE_1__ hdr; } ;
struct virtio_transport {int (* send_pkt ) (struct virtio_vsock_pkt*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTCONN ; 
 scalar_t__ VIRTIO_VSOCK_OP_RST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct virtio_vsock_pkt*) ; 
 struct virtio_vsock_pkt* FUNC4 (struct virtio_vsock_pkt_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_vsock_pkt*) ; 
 struct virtio_transport* FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct virtio_vsock_pkt *pkt)
{
	const struct virtio_transport *t;
	struct virtio_vsock_pkt *reply;
	struct virtio_vsock_pkt_info info = {
		.op = VIRTIO_VSOCK_OP_RST,
		.type = FUNC0(pkt->hdr.type),
		.reply = true,
	};

	/* Send RST only if the original pkt is not a RST pkt */
	if (FUNC0(pkt->hdr.op) == VIRTIO_VSOCK_OP_RST)
		return 0;

	reply = FUNC4(&info, 0,
					   FUNC2(pkt->hdr.dst_cid),
					   FUNC1(pkt->hdr.dst_port),
					   FUNC2(pkt->hdr.src_cid),
					   FUNC1(pkt->hdr.src_port));
	if (!reply)
		return -ENOMEM;

	t = FUNC6();
	if (!t) {
		FUNC5(reply);
		return -ENOTCONN;
	}

	return t->send_pkt(reply);
}