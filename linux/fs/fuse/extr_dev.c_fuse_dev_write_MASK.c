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
struct kiocb {int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
struct fuse_dev {int dummy; } ;
struct fuse_copy_state {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_copy_state*,int /*<<< orphan*/ ,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dev*,struct fuse_copy_state*,int /*<<< orphan*/ ) ; 
 struct fuse_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC5(struct kiocb *iocb, struct iov_iter *from)
{
	struct fuse_copy_state cs;
	struct fuse_dev *fud = FUNC2(iocb->ki_filp);

	if (!fud)
		return -EPERM;

	if (!FUNC4(from))
		return -EINVAL;

	FUNC0(&cs, 0, from);

	return FUNC1(fud, &cs, FUNC3(from));
}