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
struct virtio_fs_vq {int /*<<< orphan*/ * fud; } ;
struct virtio_fs {unsigned int nvqs; struct virtio_fs_vq* vqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct virtio_fs *fs)
{
	unsigned int i;

	for (i = 0; i < fs->nvqs; i++) {
		struct virtio_fs_vq *fsvq = &fs->vqs[i];

		if (!fsvq->fud)
			continue;

		FUNC0(fsvq->fud);
		fsvq->fud = NULL;
	}
}