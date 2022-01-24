#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kiocb {int /*<<< orphan*/  ki_filp; } ;
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct iov_iter*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct kiocb *iocb, struct iov_iter *to)
{
	if (FUNC7(FUNC3(FUNC0(FUNC4(iocb->ki_filp)->i_sb))))
		return -EIO;

	if (!FUNC6(to))
		return 0; /* skip atime */

#ifdef CONFIG_FS_DAX
	if (IS_DAX(file_inode(iocb->ki_filp)))
		return ext4_dax_read_iter(iocb, to);
#endif
	return FUNC5(iocb, to);
}