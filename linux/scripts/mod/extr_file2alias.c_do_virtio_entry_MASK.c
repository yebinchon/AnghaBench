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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ VIRTIO_DEV_ANY_ID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ device ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ vendor ; 
 int /*<<< orphan*/  virtio_device_id ; 

__attribute__((used)) static int FUNC4(const char *filename, void *symval,
			   char *alias)
{
	FUNC1(symval, virtio_device_id, device);
	FUNC1(symval, virtio_device_id, vendor);

	FUNC3(alias, "virtio:");
	FUNC0(alias, "d", device != VIRTIO_DEV_ANY_ID, device);
	FUNC0(alias, "v", vendor != VIRTIO_DEV_ANY_ID, vendor);

	FUNC2(alias);
	return 1;
}