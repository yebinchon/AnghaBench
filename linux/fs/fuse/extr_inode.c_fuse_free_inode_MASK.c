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
struct inode {int dummy; } ;
struct fuse_inode {int /*<<< orphan*/  forget; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  fuse_inode_cachep ; 
 struct fuse_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fuse_inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	struct fuse_inode *fi = FUNC0(inode);

	FUNC3(&fi->mutex);
	FUNC1(fi->forget);
	FUNC2(fuse_inode_cachep, fi);
}