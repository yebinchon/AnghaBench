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
typedef  scalar_t__ u64 ;
struct inode {scalar_t__ i_size; } ;
struct fuse_inode {scalar_t__ attr_version; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct fuse_conn {int /*<<< orphan*/  attr_version; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_I_SIZE_UNSTABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, loff_t size,
				  u64 attr_ver)
{
	struct fuse_conn *fc = FUNC1(inode);
	struct fuse_inode *fi = FUNC2(inode);

	FUNC4(&fi->lock);
	if (attr_ver == fi->attr_version && size < inode->i_size &&
	    !FUNC6(FUSE_I_SIZE_UNSTABLE, &fi->state)) {
		fi->attr_version = FUNC0(&fc->attr_version);
		FUNC3(inode, size);
	}
	FUNC5(&fi->lock);
}