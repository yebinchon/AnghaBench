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
struct virtio_vsock_event {int dummy; } ;
struct virtio_vsock {int /*<<< orphan*/ * vqs; struct virtio_vsock_event* event_list; } ;

/* Variables and functions */
 size_t FUNC0 (struct virtio_vsock_event*) ; 
 size_t VSOCK_VQ_EVENT ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_vsock*,struct virtio_vsock_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct virtio_vsock *vsock)
{
	size_t i;

	for (i = 0; i < FUNC0(vsock->event_list); i++) {
		struct virtio_vsock_event *event = &vsock->event_list[i];

		FUNC1(vsock, event);
	}

	FUNC2(vsock->vqs[VSOCK_VQ_EVENT]);
}