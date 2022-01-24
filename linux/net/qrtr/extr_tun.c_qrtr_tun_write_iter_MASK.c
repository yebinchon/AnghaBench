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
struct qrtr_tun {int /*<<< orphan*/  ep; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {struct qrtr_tun* private_data; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EFAULT ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t,struct iov_iter*) ; 
 size_t FUNC1 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC5(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *filp = iocb->ki_filp;
	struct qrtr_tun *tun = filp->private_data;
	size_t len = FUNC1(from);
	ssize_t ret;
	void *kbuf;

	kbuf = FUNC3(len, GFP_KERNEL);
	if (!kbuf)
		return -ENOMEM;

	if (!FUNC0(kbuf, len, from)) {
		FUNC2(kbuf);
		return -EFAULT;
	}

	ret = FUNC4(&tun->ep, kbuf, len);

	FUNC2(kbuf);
	return ret < 0 ? ret : len;
}