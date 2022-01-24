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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct timerfd_ctx {TYPE_1__ wqh; scalar_t__ ticks; } ;
struct file {struct timerfd_ctx* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC0 (struct file*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file, poll_table *wait)
{
	struct timerfd_ctx *ctx = file->private_data;
	__poll_t events = 0;
	unsigned long flags;

	FUNC0(file, &ctx->wqh, wait);

	FUNC1(&ctx->wqh.lock, flags);
	if (ctx->ticks)
		events |= EPOLLIN;
	FUNC2(&ctx->wqh.lock, flags);

	return events;
}