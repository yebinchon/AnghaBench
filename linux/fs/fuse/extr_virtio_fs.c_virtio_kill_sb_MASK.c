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
struct virtio_fs_vq {int connected; int /*<<< orphan*/  lock; } ;
struct virtio_fs {struct virtio_fs_vq* vqs; } ;
struct super_block {int dummy; } ;
struct TYPE_2__ {struct virtio_fs* priv; } ;
struct fuse_conn {TYPE_1__ iq; } ;

/* Variables and functions */
 size_t VQ_HIPRIO ; 
 void FUNC0 (struct super_block*) ; 
 struct fuse_conn* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_fs*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_fs*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_fs*) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct fuse_conn *fc = FUNC1(sb);
	struct virtio_fs *vfs;
	struct virtio_fs_vq *fsvq;

	/* If mount failed, we can still be called without any fc */
	if (!fc)
		return FUNC0(sb);

	vfs = fc->iq.priv;
	fsvq = &vfs->vqs[VQ_HIPRIO];

	/* Stop forget queue. Soon destroy will be sent */
	FUNC2(&fsvq->lock);
	fsvq->connected = false;
	FUNC3(&fsvq->lock);
	FUNC4(vfs);

	FUNC0(sb);

	/* fuse_kill_sb_anon() must have sent destroy. Stop all queues
	 * and drain one more time and free fuse devices. Freeing fuse
	 * devices will drop their reference on fuse_conn and that in
	 * turn will drop its reference on virtio_fs object.
	 */
	FUNC6(vfs);
	FUNC4(vfs);
	FUNC5(vfs);
}