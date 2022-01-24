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
struct udf_inode_info {scalar_t__ i_alloc_type; int /*<<< orphan*/  i_data_sem; int /*<<< orphan*/  i_lenAlloc; } ;
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_size; TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (struct kiocb*,struct iov_iter*) ; 
 scalar_t__ FUNC5 (struct kiocb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC15(struct kiocb *iocb, struct iov_iter *from)
{
	ssize_t retval;
	struct file *file = iocb->ki_filp;
	struct inode *inode = FUNC3(file);
	struct udf_inode_info *iinfo = FUNC0(inode);
	int err;

	FUNC6(inode);

	retval = FUNC4(iocb, from);
	if (retval <= 0)
		goto out;

	FUNC2(&iinfo->i_data_sem);
	if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
		loff_t end = iocb->ki_pos + FUNC8(from);

		if (inode->i_sb->s_blocksize <
				(FUNC13(inode) + end)) {
			err = FUNC12(inode);
			if (err) {
				FUNC7(inode);
				FUNC11("udf_expand_adinicb: err=%d\n", err);
				return err;
			}
		} else {
			iinfo->i_lenAlloc = FUNC10(end, inode->i_size);
			FUNC14(&iinfo->i_data_sem);
		}
	} else
		FUNC14(&iinfo->i_data_sem);

	retval = FUNC1(iocb, from);
out:
	FUNC7(inode);

	if (retval > 0) {
		FUNC9(inode);
		retval = FUNC5(iocb, retval);
	}

	return retval;
}