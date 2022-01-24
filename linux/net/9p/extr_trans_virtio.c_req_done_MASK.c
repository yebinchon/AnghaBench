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
struct virtqueue {TYPE_2__* vdev; } ;
struct virtio_chan {int ring_bufs_avail; int /*<<< orphan*/  vc_wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  client; int /*<<< orphan*/  vq; } ;
struct TYPE_3__ {unsigned int size; } ;
struct p9_req_t {TYPE_1__ rc; } ;
struct TYPE_4__ {struct virtio_chan* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_TRANS ; 
 int /*<<< orphan*/  REQ_STATUS_RCVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct p9_req_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct p9_req_t* FUNC4 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct virtqueue *vq)
{
	struct virtio_chan *chan = vq->vdev->priv;
	unsigned int len;
	struct p9_req_t *req;
	bool need_wakeup = false;
	unsigned long flags;

	FUNC1(P9_DEBUG_TRANS, ": request done\n");

	FUNC2(&chan->lock, flags);
	while ((req = FUNC4(chan->vq, &len)) != NULL) {
		if (!chan->ring_bufs_avail) {
			chan->ring_bufs_avail = 1;
			need_wakeup = true;
		}

		if (len) {
			req->rc.size = len;
			FUNC0(chan->client, req, REQ_STATUS_RCVD);
		}
	}
	FUNC3(&chan->lock, flags);
	/* Wakeup if anyone waiting for VirtIO ring space. */
	if (need_wakeup)
		FUNC5(chan->vc_wq);
}