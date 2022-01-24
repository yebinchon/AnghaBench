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
struct fuse_iqueue {int /*<<< orphan*/  lock; int /*<<< orphan*/  connected; int /*<<< orphan*/  waitq; } ;
struct fuse_dev {TYPE_1__* fc; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;
struct TYPE_2__ {struct fuse_iqueue iq; } ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 struct fuse_dev* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct fuse_iqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *file, poll_table *wait)
{
	__poll_t mask = EPOLLOUT | EPOLLWRNORM;
	struct fuse_iqueue *fiq;
	struct fuse_dev *fud = FUNC0(file);

	if (!fud)
		return EPOLLERR;

	fiq = &fud->fc->iq;
	FUNC1(file, &fiq->waitq, wait);

	FUNC3(&fiq->lock);
	if (!fiq->connected)
		mask = EPOLLERR;
	else if (FUNC2(fiq))
		mask |= EPOLLIN | EPOLLRDNORM;
	FUNC4(&fiq->lock);

	return mask;
}