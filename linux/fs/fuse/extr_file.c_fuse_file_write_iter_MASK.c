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
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct fuse_file {int open_flags; } ;
struct file {struct fuse_file* private_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int FOPEN_DIRECT_IO ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	struct fuse_file *ff = file->private_data;

	if (FUNC3(FUNC0(file)))
		return -EIO;

	if (!(ff->open_flags & FOPEN_DIRECT_IO))
		return FUNC1(iocb, from);
	else
		return FUNC2(iocb, from);
}