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
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct fd {int /*<<< orphan*/  file; } ;
struct cred {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fd) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct kiocb*) ; 
 struct cred* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct file*,struct fd*) ; 
 int /*<<< orphan*/  FUNC13 (struct cred const*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC15(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = FUNC2(file);
	struct fd real;
	const struct cred *old_cred;
	ssize_t ret;

	if (!FUNC7(iter))
		return 0;

	FUNC5(inode);
	/* Update mode */
	FUNC8(FUNC9(inode), inode);
	ret = FUNC3(file);
	if (ret)
		goto out_unlock;

	ret = FUNC12(file, &real);
	if (ret)
		goto out_unlock;

	old_cred = FUNC11(FUNC2(file)->i_sb);
	FUNC4(real.file);
	ret = FUNC14(real.file, iter, &iocb->ki_pos,
			     FUNC10(iocb));
	FUNC1(real.file);
	FUNC13(old_cred);

	/* Update size */
	FUNC8(FUNC9(inode), inode);

	FUNC0(real);

out_unlock:
	FUNC6(inode);

	return ret;
}