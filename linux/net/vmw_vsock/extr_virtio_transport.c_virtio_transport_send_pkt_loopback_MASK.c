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
struct virtio_vsock_pkt {int len; int /*<<< orphan*/  list; } ;
struct virtio_vsock {int /*<<< orphan*/  loopback_work; int /*<<< orphan*/  loopback_list_lock; int /*<<< orphan*/  loopback_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtio_vsock_workqueue ; 

__attribute__((used)) static int FUNC4(struct virtio_vsock *vsock,
					      struct virtio_vsock_pkt *pkt)
{
	int len = pkt->len;

	FUNC2(&vsock->loopback_list_lock);
	FUNC0(&pkt->list, &vsock->loopback_list);
	FUNC3(&vsock->loopback_list_lock);

	FUNC1(virtio_vsock_workqueue, &vsock->loopback_work);

	return len;
}