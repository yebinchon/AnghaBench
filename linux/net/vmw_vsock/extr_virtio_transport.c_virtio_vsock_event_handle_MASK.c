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
struct virtio_vsock_event {int /*<<< orphan*/  id; } ;
struct virtio_vsock {int dummy; } ;

/* Variables and functions */
#define  VIRTIO_VSOCK_EVENT_TRANSPORT_RESET 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtio_vsock_reset_sock ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_vsock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct virtio_vsock *vsock,
				      struct virtio_vsock_event *event)
{
	switch (FUNC0(event->id)) {
	case VIRTIO_VSOCK_EVENT_TRANSPORT_RESET:
		FUNC1(vsock);
		FUNC2(virtio_vsock_reset_sock);
		break;
	}
}