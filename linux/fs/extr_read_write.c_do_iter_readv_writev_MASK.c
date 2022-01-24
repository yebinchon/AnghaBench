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
struct kiocb {int /*<<< orphan*/  ki_pos; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rwf_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIOCBQUEUED ; 
 int READ ; 
 int FUNC1 (struct file*,struct kiocb*,struct iov_iter*) ; 
 int FUNC2 (struct file*,struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*,struct file*) ; 
 int FUNC4 (struct kiocb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *filp, struct iov_iter *iter,
		loff_t *ppos, int type, rwf_t flags)
{
	struct kiocb kiocb;
	ssize_t ret;

	FUNC3(&kiocb, filp);
	ret = FUNC4(&kiocb, flags);
	if (ret)
		return ret;
	kiocb.ki_pos = (ppos ? *ppos : 0);

	if (type == READ)
		ret = FUNC1(filp, &kiocb, iter);
	else
		ret = FUNC2(filp, &kiocb, iter);
	FUNC0(ret == -EIOCBQUEUED);
	if (ppos)
		*ppos = kiocb.ki_pos;
	return ret;
}