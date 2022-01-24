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
struct fuse_inode {int /*<<< orphan*/  page_waitq; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 struct fuse_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct inode *inode, pgoff_t index)
{
	struct fuse_inode *fi = FUNC1(inode);

	FUNC2(fi->page_waitq, !FUNC0(inode, index));
}