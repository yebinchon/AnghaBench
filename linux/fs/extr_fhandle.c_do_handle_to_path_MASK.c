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
struct path {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct file_handle {int handle_bytes; int /*<<< orphan*/  handle_type; scalar_t__ f_handle; } ;
struct fid {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fid*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vfs_dentry_acceptable ; 

__attribute__((used)) static int FUNC5(int mountdirfd, struct file_handle *handle,
			     struct path *path)
{
	int retval = 0;
	int handle_dwords;

	path->mnt = FUNC3(mountdirfd);
	if (FUNC0(path->mnt)) {
		retval = FUNC1(path->mnt);
		goto out_err;
	}
	/* change the handle size to multiple of sizeof(u32) */
	handle_dwords = handle->handle_bytes >> 2;
	path->dentry = FUNC2(path->mnt,
					  (struct fid *)handle->f_handle,
					  handle_dwords, handle->handle_type,
					  vfs_dentry_acceptable, NULL);
	if (FUNC0(path->dentry)) {
		retval = FUNC1(path->dentry);
		goto out_mnt;
	}
	return 0;
out_mnt:
	FUNC4(path->mnt);
out_err:
	return retval;
}