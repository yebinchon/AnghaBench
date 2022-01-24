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
struct kiocb {int ki_flags; TYPE_1__* ki_filp; scalar_t__ ki_pos; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  f_mapping; } ;

/* Variables and functions */
 int IOCB_DIRECT ; 
 int /*<<< orphan*/  NFSIOS_NORMALREADBYTES ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,unsigned long) ; 
 struct inode* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

ssize_t
FUNC9(struct kiocb *iocb, struct iov_iter *to)
{
	struct inode *inode = FUNC1(iocb->ki_filp);
	ssize_t result;

	if (iocb->ki_flags & IOCB_DIRECT)
		return FUNC6(iocb, to);

	FUNC0("NFS: read(%pD2, %zu@%lu)\n",
		iocb->ki_filp,
		FUNC3(to), (unsigned long) iocb->ki_pos);

	FUNC8(inode);
	result = FUNC7(inode, iocb->ki_filp->f_mapping);
	if (!result) {
		result = FUNC2(iocb, to);
		if (result > 0)
			FUNC4(inode, NFSIOS_NORMALREADBYTES, result);
	}
	FUNC5(inode);
	return result;
}