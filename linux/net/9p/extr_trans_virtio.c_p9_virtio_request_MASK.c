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
struct virtio_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  vq; scalar_t__ ring_bufs_avail; int /*<<< orphan*/ * vc_wq; struct scatterlist* sg; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  capacity; int /*<<< orphan*/  sdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  sdata; } ;
struct p9_req_t {TYPE_2__ rc; TYPE_1__ tc; int /*<<< orphan*/  status; } ;
struct p9_client {struct virtio_chan* trans; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  REQ_STATUS_SENT ; 
 int /*<<< orphan*/  VIRTQUEUE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct scatterlist*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct scatterlist**,int,int,struct p9_req_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct p9_client *client, struct p9_req_t *req)
{
	int err;
	int in, out, out_sgs, in_sgs;
	unsigned long flags;
	struct virtio_chan *chan = client->trans;
	struct scatterlist *sgs[2];

	FUNC0(P9_DEBUG_TRANS, "9p debug: virtio request\n");

	req->status = REQ_STATUS_SENT;
req_retry:
	FUNC2(&chan->lock, flags);

	out_sgs = in_sgs = 0;
	/* Handle out VirtIO ring buffers */
	out = FUNC1(chan->sg, 0,
			   VIRTQUEUE_NUM, req->tc.sdata, req->tc.size);
	if (out)
		sgs[out_sgs++] = chan->sg;

	in = FUNC1(chan->sg, out,
			  VIRTQUEUE_NUM, req->rc.sdata, req->rc.capacity);
	if (in)
		sgs[out_sgs + in_sgs++] = chan->sg + out;

	err = FUNC4(chan->vq, sgs, out_sgs, in_sgs, req,
				GFP_ATOMIC);
	if (err < 0) {
		if (err == -ENOSPC) {
			chan->ring_bufs_avail = 0;
			FUNC3(&chan->lock, flags);
			err = FUNC6(*chan->vc_wq,
						  chan->ring_bufs_avail);
			if (err  == -ERESTARTSYS)
				return err;

			FUNC0(P9_DEBUG_TRANS, "Retry virtio request\n");
			goto req_retry;
		} else {
			FUNC3(&chan->lock, flags);
			FUNC0(P9_DEBUG_TRANS,
				 "virtio rpc add_sgs returned failure\n");
			return -EIO;
		}
	}
	FUNC5(chan->vq);
	FUNC3(&chan->lock, flags);

	FUNC0(P9_DEBUG_TRANS, "virtio request kicked\n");
	return 0;
}