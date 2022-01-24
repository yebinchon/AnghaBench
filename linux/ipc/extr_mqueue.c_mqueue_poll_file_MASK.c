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
struct poll_table_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ mq_curmsgs; scalar_t__ mq_maxmsg; } ;
struct mqueue_inode_info {int /*<<< orphan*/  lock; TYPE_1__ attr; int /*<<< orphan*/  wait_q; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 struct mqueue_inode_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *filp, struct poll_table_struct *poll_tab)
{
	struct mqueue_inode_info *info = FUNC0(FUNC1(filp));
	__poll_t retval = 0;

	FUNC2(filp, &info->wait_q, poll_tab);

	FUNC3(&info->lock);
	if (info->attr.mq_curmsgs)
		retval = EPOLLIN | EPOLLRDNORM;

	if (info->attr.mq_curmsgs < info->attr.mq_maxmsg)
		retval |= EPOLLOUT | EPOLLWRNORM;
	FUNC4(&info->lock);

	return retval;
}