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
struct virtio_fs {int dummy; } ;
struct fuse_iqueue {struct virtio_fs* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtio_fs_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_fs*) ; 

__attribute__((used)) static void FUNC3(struct fuse_iqueue *fiq)
{
	struct virtio_fs *vfs = fiq->priv;

	FUNC0(&virtio_fs_mutex);
	FUNC2(vfs);
	FUNC1(&virtio_fs_mutex);
}