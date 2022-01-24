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
struct fuse_inode {scalar_t__ writectr; int /*<<< orphan*/  page_waitq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUSE_NOWRITE ; 
 struct fuse_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct inode *inode)
{
	struct fuse_inode *fi = FUNC1(inode);

	FUNC0(!FUNC2(inode));

	FUNC3(&fi->lock);
	FUNC0(fi->writectr < 0);
	fi->writectr += FUSE_NOWRITE;
	FUNC4(&fi->lock);
	FUNC5(fi->page_waitq, fi->writectr == FUSE_NOWRITE);
}