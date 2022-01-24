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
struct TYPE_2__ {int /*<<< orphan*/  tmr; int /*<<< orphan*/  alarm; } ;
struct timerfd_ctx {TYPE_1__ t; } ;
struct inode {int dummy; } ;
struct file {struct timerfd_ctx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct timerfd_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct timerfd_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (struct timerfd_ctx*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct timerfd_ctx *ctx = file->private_data;

	FUNC4(ctx);

	if (FUNC2(ctx))
		FUNC0(&ctx->t.alarm);
	else
		FUNC1(&ctx->t.tmr);
	FUNC3(ctx, rcu);
	return 0;
}