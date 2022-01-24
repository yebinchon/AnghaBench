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
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
struct fd {int /*<<< orphan*/  file; } ;
struct cred {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fd) ; 
 TYPE_1__* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*) ; 
 struct cred* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct file*,struct fd*) ; 
 int /*<<< orphan*/  FUNC7 (struct cred const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct fd real;
	const struct cred *old_cred;
	ssize_t ret;

	if (!FUNC2(iter))
		return 0;

	ret = FUNC6(file, &real);
	if (ret)
		return ret;

	old_cred = FUNC5(FUNC1(file)->i_sb);
	ret = FUNC8(real.file, iter, &iocb->ki_pos,
			    FUNC4(iocb));
	FUNC7(old_cred);

	FUNC3(file);

	FUNC0(real);

	return ret;
}