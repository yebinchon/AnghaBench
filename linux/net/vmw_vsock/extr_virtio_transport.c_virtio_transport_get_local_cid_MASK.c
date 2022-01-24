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
typedef  int /*<<< orphan*/  u32 ;
struct virtio_vsock {int /*<<< orphan*/  guest_cid; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMADDR_CID_ANY ; 
 struct virtio_vsock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  the_virtio_vsock ; 

__attribute__((used)) static u32 FUNC3(void)
{
	struct virtio_vsock *vsock;
	u32 ret;

	FUNC1();
	vsock = FUNC0(the_virtio_vsock);
	if (!vsock) {
		ret = VMADDR_CID_ANY;
		goto out_rcu;
	}

	ret = vsock->guest_cid;
out_rcu:
	FUNC2();
	return ret;
}