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
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;
struct iov_iter {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
typedef  scalar_t__ ssize_t ;
typedef  int rwf_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {scalar_t__ (* read ) (struct file*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ;scalar_t__ (* write ) (struct file*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ EOPNOTSUPP ; 
 int READ ; 
 int RWF_HIPRI ; 
 int /*<<< orphan*/  FUNC0 (struct iov_iter*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct iov_iter*) ; 
 struct iovec FUNC2 (struct iov_iter*) ; 
 scalar_t__ FUNC3 (struct file*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct file*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *filp, struct iov_iter *iter,
		loff_t *ppos, int type, rwf_t flags)
{
	ssize_t ret = 0;

	if (flags & ~RWF_HIPRI)
		return -EOPNOTSUPP;

	while (FUNC1(iter)) {
		struct iovec iovec = FUNC2(iter);
		ssize_t nr;

		if (type == READ) {
			nr = filp->f_op->read(filp, iovec.iov_base,
					      iovec.iov_len, ppos);
		} else {
			nr = filp->f_op->write(filp, iovec.iov_base,
					       iovec.iov_len, ppos);
		}

		if (nr < 0) {
			if (!ret)
				ret = nr;
			break;
		}
		ret += nr;
		if (nr != iovec.iov_len)
			break;
		FUNC0(iter, nr);
	}

	return ret;
}