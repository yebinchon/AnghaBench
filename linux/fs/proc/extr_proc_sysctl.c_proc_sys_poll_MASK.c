#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {TYPE_1__* poll; int /*<<< orphan*/  proc_handler; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_4__ {struct ctl_table* sysctl_entry; } ;
struct TYPE_3__ {int /*<<< orphan*/  event; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int DEFAULT_POLLMASK ; 
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLPRI ; 
 int EPOLLRDNORM ; 
 scalar_t__ FUNC0 (struct ctl_table_header*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (struct file*) ; 
 struct ctl_table_header* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctl_table_header*) ; 

__attribute__((used)) static __poll_t FUNC8(struct file *filp, poll_table *wait)
{
	struct inode *inode = FUNC3(filp);
	struct ctl_table_header *head = FUNC4(inode);
	struct ctl_table *table = FUNC1(inode)->sysctl_entry;
	__poll_t ret = DEFAULT_POLLMASK;
	unsigned long event;

	/* sysctl was unregistered */
	if (FUNC0(head))
		return EPOLLERR | EPOLLHUP;

	if (!table->proc_handler)
		goto out;

	if (!table->poll)
		goto out;

	event = (unsigned long)filp->private_data;
	FUNC5(filp, &table->poll->wait, wait);

	if (event != FUNC2(&table->poll->event)) {
		filp->private_data = FUNC6(table->poll);
		ret = EPOLLIN | EPOLLRDNORM | EPOLLERR | EPOLLPRI;
	}

out:
	FUNC7(head);

	return ret;
}