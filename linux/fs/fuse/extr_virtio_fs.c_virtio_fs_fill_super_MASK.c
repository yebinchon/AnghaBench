#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virtio_fs_vq {TYPE_2__* fud; } ;
struct virtio_fs {unsigned int nvqs; struct virtio_fs_vq* vqs; int /*<<< orphan*/  tag; int /*<<< orphan*/  list; } ;
struct super_block {int dummy; } ;
struct fuse_fs_context {int default_permissions; int allow_other; int blksize; int destroy; int no_control; int no_force_umount; int no_mount_options; void** fudptr; int /*<<< orphan*/  max_read; int /*<<< orphan*/  rootmode; } ;
struct TYPE_4__ {struct virtio_fs* priv; } ;
struct fuse_conn {TYPE_1__ iq; } ;
struct TYPE_5__ {struct fuse_conn* fc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  UINT_MAX ; 
 unsigned int VQ_REQUEST ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct fuse_conn*) ; 
 int FUNC2 (struct super_block*,struct fuse_fs_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 struct fuse_conn* FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_fs*) ; 
 int /*<<< orphan*/  virtio_fs_mutex ; 
 int /*<<< orphan*/  FUNC10 (struct virtio_fs*) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb)
{
	struct fuse_conn *fc = FUNC4(sb);
	struct virtio_fs *fs = fc->iq.priv;
	unsigned int i;
	int err;
	struct fuse_fs_context ctx = {
		.rootmode = S_IFDIR,
		.default_permissions = 1,
		.allow_other = 1,
		.max_read = UINT_MAX,
		.blksize = 512,
		.destroy = true,
		.no_control = true,
		.no_force_umount = true,
		.no_mount_options = true,
	};

	FUNC6(&virtio_fs_mutex);

	/* After holding mutex, make sure virtiofs device is still there.
	 * Though we are holding a reference to it, drive ->remove might
	 * still have cleaned up virtual queues. In that case bail out.
	 */
	err = -EINVAL;
	if (FUNC5(&fs->list)) {
		FUNC8("virtio-fs: tag <%s> not found\n", fs->tag);
		goto err;
	}

	err = -ENOMEM;
	/* Allocate fuse_dev for hiprio and notification queues */
	for (i = 0; i < VQ_REQUEST; i++) {
		struct virtio_fs_vq *fsvq = &fs->vqs[i];

		fsvq->fud = FUNC0();
		if (!fsvq->fud)
			goto err_free_fuse_devs;
	}

	ctx.fudptr = (void **)&fs->vqs[VQ_REQUEST].fud;
	err = FUNC2(sb, &ctx);
	if (err < 0)
		goto err_free_fuse_devs;

	fc = fs->vqs[VQ_REQUEST].fud->fc;

	for (i = 0; i < fs->nvqs; i++) {
		struct virtio_fs_vq *fsvq = &fs->vqs[i];

		if (i == VQ_REQUEST)
			continue; /* already initialized */
		FUNC1(fsvq->fud, fc);
	}

	/* Previous unmount will stop all queues. Start these again */
	FUNC10(fs);
	FUNC3(fc);
	FUNC7(&virtio_fs_mutex);
	return 0;

err_free_fuse_devs:
	FUNC9(fs);
err:
	FUNC7(&virtio_fs_mutex);
	return err;
}