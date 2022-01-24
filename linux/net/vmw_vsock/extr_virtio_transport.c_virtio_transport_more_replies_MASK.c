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
struct virtqueue {int dummy; } ;
struct virtio_vsock {int /*<<< orphan*/  queued_replies; struct virtqueue** vqs; } ;

/* Variables and functions */
 size_t VSOCK_VQ_RX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct virtqueue*) ; 

__attribute__((used)) static bool FUNC3(struct virtio_vsock *vsock)
{
	struct virtqueue *vq = vsock->vqs[VSOCK_VQ_RX];
	int val;

	FUNC1(); /* paired with atomic_inc() and atomic_dec_return() */
	val = FUNC0(&vsock->queued_replies);

	return val < FUNC2(vq);
}