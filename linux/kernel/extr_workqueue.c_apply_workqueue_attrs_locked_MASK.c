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
struct workqueue_struct {int flags; int /*<<< orphan*/  pwqs; } ;
struct workqueue_attrs {int dummy; } ;
struct apply_wqattrs_ctx {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int WQ_UNBOUND ; 
 int __WQ_ORDERED ; 
 int __WQ_ORDERED_EXPLICIT ; 
 int /*<<< orphan*/  FUNC1 (struct apply_wqattrs_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct apply_wqattrs_ctx*) ; 
 struct apply_wqattrs_ctx* FUNC3 (struct workqueue_struct*,struct workqueue_attrs const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct workqueue_struct *wq,
					const struct workqueue_attrs *attrs)
{
	struct apply_wqattrs_ctx *ctx;

	/* only unbound workqueues can change attributes */
	if (FUNC0(!(wq->flags & WQ_UNBOUND)))
		return -EINVAL;

	/* creating multiple pwqs breaks ordering guarantee */
	if (!FUNC4(&wq->pwqs)) {
		if (FUNC0(wq->flags & __WQ_ORDERED_EXPLICIT))
			return -EINVAL;

		wq->flags &= ~__WQ_ORDERED;
	}

	ctx = FUNC3(wq, attrs);
	if (!ctx)
		return -ENOMEM;

	/* the ctx has been prepared successfully, let's commit it */
	FUNC2(ctx);
	FUNC1(ctx);

	return 0;
}