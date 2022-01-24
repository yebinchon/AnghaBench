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
struct timerfd_ctx {scalar_t__ moffs; int /*<<< orphan*/  might_cancel; } ;

/* Variables and functions */
 scalar_t__ KTIME_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct timerfd_ctx *ctx)
{
	if (!ctx->might_cancel || ctx->moffs != KTIME_MAX)
		return false;
	ctx->moffs = FUNC0(0);
	return true;
}