#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_1__* dentry; } ;
struct file_operations {scalar_t__ write_iter; scalar_t__ write; scalar_t__ read_iter; scalar_t__ read; } ;
struct file {int f_mode; struct file_operations const* f_op; int /*<<< orphan*/  f_mapping; int /*<<< orphan*/  f_wb_err; TYPE_2__* f_inode; struct path f_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_3__ {TYPE_2__* d_inode; } ;

/* Variables and functions */
 int FMODE_CAN_READ ; 
 int FMODE_CAN_WRITE ; 
 int FMODE_OPENED ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct file*) ; 
 struct file* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct file *FUNC6(const struct path *path, int flags,
		const struct file_operations *fop)
{
	struct file *file;

	file = FUNC1(flags, FUNC2());
	if (FUNC0(file))
		return file;

	file->f_path = *path;
	file->f_inode = path->dentry->d_inode;
	file->f_mapping = path->dentry->d_inode->i_mapping;
	file->f_wb_err = FUNC3(file->f_mapping);
	if ((file->f_mode & FMODE_READ) &&
	     FUNC5(fop->read || fop->read_iter))
		file->f_mode |= FMODE_CAN_READ;
	if ((file->f_mode & FMODE_WRITE) &&
	     FUNC5(fop->write || fop->write_iter))
		file->f_mode |= FMODE_CAN_WRITE;
	file->f_mode |= FMODE_OPENED;
	file->f_op = fop;
	if ((file->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ)
		FUNC4(path->dentry->d_inode);
	return file;
}