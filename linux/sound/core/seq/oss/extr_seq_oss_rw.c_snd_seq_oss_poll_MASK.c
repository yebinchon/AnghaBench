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
struct seq_oss_devinfo {int /*<<< orphan*/  cseq; int /*<<< orphan*/  file_mode; scalar_t__ writeq; scalar_t__ readq; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,struct file*,int /*<<< orphan*/ *) ; 

__poll_t
FUNC4(struct seq_oss_devinfo *dp, struct file *file, poll_table * wait)
{
	__poll_t mask = 0;

	/* input */
	if (dp->readq && FUNC0(dp->file_mode)) {
		if (FUNC3(dp->readq, file, wait))
			mask |= EPOLLIN | EPOLLRDNORM;
	}

	/* output */
	if (dp->writeq && FUNC1(dp->file_mode)) {
		if (FUNC2(dp->cseq, file, wait))
			mask |= EPOLLOUT | EPOLLWRNORM;
	}
	return mask;
}