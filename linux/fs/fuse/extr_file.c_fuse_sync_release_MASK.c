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
struct fuse_inode {int dummy; } ;
struct fuse_file {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_file*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_inode*,struct fuse_file*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fuse_inode *fi, struct fuse_file *ff, int flags)
{
	FUNC0(FUNC3(&ff->count) > 1);
	FUNC2(fi, ff, flags, FUSE_RELEASE);
	/*
	 * iput(NULL) is a no-op and since the refcount is 1 and everything's
	 * synchronous, we are fine with not doing igrab() here"
	 */
	FUNC1(ff, true, false);
}