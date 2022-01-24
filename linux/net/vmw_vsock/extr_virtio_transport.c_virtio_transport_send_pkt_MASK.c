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
struct TYPE_2__ {int /*<<< orphan*/  dst_cid; } ;
struct virtio_vsock_pkt {int len; int /*<<< orphan*/  list; scalar_t__ reply; TYPE_1__ hdr; } ;
struct virtio_vsock {scalar_t__ guest_cid; int /*<<< orphan*/  send_pkt_work; int /*<<< orphan*/  send_pkt_list_lock; int /*<<< orphan*/  send_pkt_list; int /*<<< orphan*/  queued_replies; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct virtio_vsock* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_virtio_vsock ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_vsock_pkt*) ; 
 int FUNC10 (struct virtio_vsock*,struct virtio_vsock_pkt*) ; 
 int /*<<< orphan*/  virtio_vsock_workqueue ; 

__attribute__((used)) static int
FUNC11(struct virtio_vsock_pkt *pkt)
{
	struct virtio_vsock *vsock;
	int len = pkt->len;

	FUNC5();
	vsock = FUNC4(the_virtio_vsock);
	if (!vsock) {
		FUNC9(pkt);
		len = -ENODEV;
		goto out_rcu;
	}

	if (FUNC1(pkt->hdr.dst_cid) == vsock->guest_cid) {
		len = FUNC10(vsock, pkt);
		goto out_rcu;
	}

	if (pkt->reply)
		FUNC0(&vsock->queued_replies);

	FUNC7(&vsock->send_pkt_list_lock);
	FUNC2(&pkt->list, &vsock->send_pkt_list);
	FUNC8(&vsock->send_pkt_list_lock);

	FUNC3(virtio_vsock_workqueue, &vsock->send_pkt_work);

out_rcu:
	FUNC6();
	return len;
}