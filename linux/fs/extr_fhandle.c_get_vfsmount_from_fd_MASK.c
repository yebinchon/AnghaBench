#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  mnt; } ;
struct fs_struct {int /*<<< orphan*/  lock; TYPE_2__ pwd; } ;
struct fd {TYPE_3__* file; } ;
struct TYPE_8__ {struct fs_struct* fs; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt; } ;
struct TYPE_7__ {TYPE_1__ f_path; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int /*<<< orphan*/  EBADF ; 
 struct vfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* current ; 
 struct fd FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fd) ; 
 struct vfsmount* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vfsmount *FUNC6(int fd)
{
	struct vfsmount *mnt;

	if (fd == AT_FDCWD) {
		struct fs_struct *fs = current->fs;
		FUNC4(&fs->lock);
		mnt = FUNC3(fs->pwd.mnt);
		FUNC5(&fs->lock);
	} else {
		struct fd f = FUNC1(fd);
		if (!f.file)
			return FUNC0(-EBADF);
		mnt = FUNC3(f.file->f_path.mnt);
		FUNC2(f);
	}
	return mnt;
}