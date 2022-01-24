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
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int dummy; } ;
struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ *,struct kstat*,int /*<<< orphan*/ ,unsigned int) ; 
 struct fuse_conn* FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(const struct path *path, struct kstat *stat,
			u32 request_mask, unsigned int flags)
{
	struct inode *inode = FUNC0(path->dentry);
	struct fuse_conn *fc = FUNC3(inode);

	if (!FUNC1(fc))
		return -EACCES;

	return FUNC2(inode, NULL, stat, request_mask, flags);
}