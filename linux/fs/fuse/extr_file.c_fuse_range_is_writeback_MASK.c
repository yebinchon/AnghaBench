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
struct fuse_inode {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int FUNC0 (struct fuse_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fuse_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct inode *inode, pgoff_t idx_from,
				   pgoff_t idx_to)
{
	struct fuse_inode *fi = FUNC1(inode);
	bool found;

	FUNC2(&fi->lock);
	found = FUNC0(fi, idx_from, idx_to);
	FUNC3(&fi->lock);

	return found;
}