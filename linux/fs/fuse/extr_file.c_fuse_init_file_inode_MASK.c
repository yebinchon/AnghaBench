#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {TYPE_1__ i_data; int /*<<< orphan*/ * i_fop; } ;
struct fuse_inode {int /*<<< orphan*/  writepages; int /*<<< orphan*/  page_waitq; scalar_t__ writectr; int /*<<< orphan*/  queued_writes; int /*<<< orphan*/  write_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fuse_file_aops ; 
 int /*<<< orphan*/  fuse_file_operations ; 
 struct fuse_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct inode *inode)
{
	struct fuse_inode *fi = FUNC1(inode);

	inode->i_fop = &fuse_file_operations;
	inode->i_data.a_ops = &fuse_file_aops;

	FUNC0(&fi->write_files);
	FUNC0(&fi->queued_writes);
	fi->writectr = 0;
	FUNC2(&fi->page_waitq);
	FUNC0(&fi->writepages);
}