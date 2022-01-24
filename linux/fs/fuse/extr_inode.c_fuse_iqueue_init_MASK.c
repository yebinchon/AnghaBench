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
struct fuse_iqueue_ops {int dummy; } ;
struct fuse_iqueue {int connected; void* priv; struct fuse_iqueue_ops const* ops; int /*<<< orphan*/  forget_list_head; int /*<<< orphan*/ * forget_list_tail; int /*<<< orphan*/  interrupts; int /*<<< orphan*/  pending; int /*<<< orphan*/  waitq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_iqueue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fuse_iqueue *fiq,
			     const struct fuse_iqueue_ops *ops,
			     void *priv)
{
	FUNC2(fiq, 0, sizeof(struct fuse_iqueue));
	FUNC3(&fiq->lock);
	FUNC1(&fiq->waitq);
	FUNC0(&fiq->pending);
	FUNC0(&fiq->interrupts);
	fiq->forget_list_tail = &fiq->forget_list_head;
	fiq->connected = 1;
	fiq->ops = ops;
	fiq->priv = priv;
}