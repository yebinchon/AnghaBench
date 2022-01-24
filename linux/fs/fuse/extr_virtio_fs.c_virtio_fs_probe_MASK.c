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
struct virtio_fs {int /*<<< orphan*/  refcount; } ;
struct virtio_device {struct virtio_fs* priv; TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_fs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct virtio_fs* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*) ; 
 int FUNC5 (struct virtio_fs*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_device*,struct virtio_fs*) ; 
 int FUNC7 (struct virtio_device*,struct virtio_fs*) ; 
 int FUNC8 (struct virtio_device*,struct virtio_fs*) ; 

__attribute__((used)) static int FUNC9(struct virtio_device *vdev)
{
	struct virtio_fs *fs;
	int ret;

	fs = FUNC2(sizeof(*fs), GFP_KERNEL);
	if (!fs)
		return -ENOMEM;
	FUNC1(&fs->refcount);
	vdev->priv = fs;

	ret = FUNC7(vdev, fs);
	if (ret < 0)
		goto out;

	ret = FUNC8(vdev, fs);
	if (ret < 0)
		goto out;

	/* TODO vq affinity */

	/* Bring the device online in case the filesystem is mounted and
	 * requests need to be sent before we return.
	 */
	FUNC4(vdev);

	ret = FUNC5(fs);
	if (ret < 0)
		goto out_vqs;

	return 0;

out_vqs:
	vdev->config->reset(vdev);
	FUNC6(vdev, fs);

out:
	vdev->priv = NULL;
	FUNC0(fs);
	return ret;
}