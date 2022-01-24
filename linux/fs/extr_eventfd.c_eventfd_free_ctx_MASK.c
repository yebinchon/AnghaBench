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
struct eventfd_ctx {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  eventfd_ida ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct eventfd_ctx*) ; 

__attribute__((used)) static void FUNC2(struct eventfd_ctx *ctx)
{
	if (ctx->id >= 0)
		FUNC0(&eventfd_ida, ctx->id);
	FUNC1(ctx);
}