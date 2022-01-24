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
typedef  size_t u32 ;
struct virtio_vsock_pkt_info {size_t flags; int /*<<< orphan*/  op; int /*<<< orphan*/  type; int /*<<< orphan*/  msg; int /*<<< orphan*/  vsk; int /*<<< orphan*/  reply; } ;
struct TYPE_2__ {void* len; void* flags; void* dst_port; void* src_port; void* dst_cid; void* src_cid; void* op; void* type; } ;
struct virtio_vsock_pkt {size_t len; size_t buf_len; struct virtio_vsock_pkt* buf; int /*<<< orphan*/  vsk; int /*<<< orphan*/  reply; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (size_t) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_vsock_pkt*) ; 
 struct virtio_vsock_pkt* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 struct virtio_vsock_pkt* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct virtio_vsock_pkt*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t,size_t,size_t,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static struct virtio_vsock_pkt *
FUNC8(struct virtio_vsock_pkt_info *info,
			   size_t len,
			   u32 src_cid,
			   u32 src_port,
			   u32 dst_cid,
			   u32 dst_port)
{
	struct virtio_vsock_pkt *pkt;
	int err;

	pkt = FUNC5(sizeof(*pkt), GFP_KERNEL);
	if (!pkt)
		return NULL;

	pkt->hdr.type		= FUNC0(info->type);
	pkt->hdr.op		= FUNC0(info->op);
	pkt->hdr.src_cid	= FUNC2(src_cid);
	pkt->hdr.dst_cid	= FUNC2(dst_cid);
	pkt->hdr.src_port	= FUNC1(src_port);
	pkt->hdr.dst_port	= FUNC1(dst_port);
	pkt->hdr.flags		= FUNC1(info->flags);
	pkt->len		= len;
	pkt->hdr.len		= FUNC1(len);
	pkt->reply		= info->reply;
	pkt->vsk		= info->vsk;

	if (info->msg && len > 0) {
		pkt->buf = FUNC4(len, GFP_KERNEL);
		if (!pkt->buf)
			goto out_pkt;

		pkt->buf_len = len;

		err = FUNC6(pkt->buf, info->msg, len);
		if (err)
			goto out;
	}

	FUNC7(src_cid, src_port,
					 dst_cid, dst_port,
					 len,
					 info->type,
					 info->op,
					 info->flags);

	return pkt;

out:
	FUNC3(pkt->buf);
out_pkt:
	FUNC3(pkt);
	return NULL;
}