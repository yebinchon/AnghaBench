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
struct virtqueue {scalar_t__ num_free; } ;
struct virtio_vsock_pkt {int buf_len; int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  hdr; } ;
struct virtio_vsock {scalar_t__ rx_buf_nr; scalar_t__ rx_buf_max_nr; struct virtqueue** vqs; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int VIRTIO_VSOCK_DEFAULT_RX_BUF_SIZE ; 
 size_t VSOCK_VQ_RX ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct virtio_vsock_pkt* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_vsock_pkt*) ; 
 int FUNC4 (struct virtqueue*,struct scatterlist**,int /*<<< orphan*/ ,int,struct virtio_vsock_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC6(struct virtio_vsock *vsock)
{
	int buf_len = VIRTIO_VSOCK_DEFAULT_RX_BUF_SIZE;
	struct virtio_vsock_pkt *pkt;
	struct scatterlist hdr, buf, *sgs[2];
	struct virtqueue *vq;
	int ret;

	vq = vsock->vqs[VSOCK_VQ_RX];

	do {
		pkt = FUNC1(sizeof(*pkt), GFP_KERNEL);
		if (!pkt)
			break;

		pkt->buf = FUNC0(buf_len, GFP_KERNEL);
		if (!pkt->buf) {
			FUNC3(pkt);
			break;
		}

		pkt->buf_len = buf_len;
		pkt->len = buf_len;

		FUNC2(&hdr, &pkt->hdr, sizeof(pkt->hdr));
		sgs[0] = &hdr;

		FUNC2(&buf, pkt->buf, buf_len);
		sgs[1] = &buf;
		ret = FUNC4(vq, sgs, 0, 2, pkt, GFP_KERNEL);
		if (ret) {
			FUNC3(pkt);
			break;
		}
		vsock->rx_buf_nr++;
	} while (vq->num_free);
	if (vsock->rx_buf_nr > vsock->rx_buf_max_nr)
		vsock->rx_buf_max_nr = vsock->rx_buf_nr;
	FUNC5(vq);
}