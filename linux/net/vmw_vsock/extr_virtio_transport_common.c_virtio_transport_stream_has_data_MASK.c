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
struct vsock_sock {struct virtio_vsock_sock* trans; } ;
struct virtio_vsock_sock {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_bytes; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

s64 FUNC2(struct vsock_sock *vsk)
{
	struct virtio_vsock_sock *vvs = vsk->trans;
	s64 bytes;

	FUNC0(&vvs->rx_lock);
	bytes = vvs->rx_bytes;
	FUNC1(&vvs->rx_lock);

	return bytes;
}