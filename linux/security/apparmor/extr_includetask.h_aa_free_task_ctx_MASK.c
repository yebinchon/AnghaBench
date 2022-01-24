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
struct aa_task_ctx {int /*<<< orphan*/  onexec; int /*<<< orphan*/  previous; int /*<<< orphan*/  nnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct aa_task_ctx *ctx)
{
	if (ctx) {
		FUNC0(ctx->nnp);
		FUNC0(ctx->previous);
		FUNC0(ctx->onexec);
	}
}