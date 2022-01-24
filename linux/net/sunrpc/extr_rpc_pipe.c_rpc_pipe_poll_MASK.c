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
struct rpc_inode {TYPE_1__* pipe; int /*<<< orphan*/  waitq; } ;
struct poll_table_struct {int dummy; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 struct rpc_inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t
FUNC6(struct file *filp, struct poll_table_struct *wait)
{
	struct inode *inode = FUNC1(filp);
	struct rpc_inode *rpci = FUNC0(inode);
	__poll_t mask = EPOLLOUT | EPOLLWRNORM;

	FUNC5(filp, &rpci->waitq, wait);

	FUNC2(inode);
	if (rpci->pipe == NULL)
		mask |= EPOLLERR | EPOLLHUP;
	else if (filp->private_data || !FUNC4(&rpci->pipe->pipe))
		mask |= EPOLLIN | EPOLLRDNORM;
	FUNC3(inode);
	return mask;
}