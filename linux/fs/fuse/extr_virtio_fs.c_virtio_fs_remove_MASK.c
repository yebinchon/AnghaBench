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
struct virtio_fs {int /*<<< orphan*/  list; } ;
struct virtio_device {struct virtio_fs* priv; TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*,struct virtio_fs*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_fs*) ; 
 int /*<<< orphan*/  virtio_fs_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_fs*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_fs*) ; 

__attribute__((used)) static void FUNC8(struct virtio_device *vdev)
{
	struct virtio_fs *fs = vdev->priv;

	FUNC1(&virtio_fs_mutex);
	/* This device is going away. No one should get new reference */
	FUNC0(&fs->list);
	FUNC7(fs);
	FUNC5(fs);
	vdev->config->reset(vdev);
	FUNC4(vdev, fs);

	vdev->priv = NULL;
	/* Put device reference on virtio_fs object */
	FUNC6(fs);
	FUNC2(&virtio_fs_mutex);
}