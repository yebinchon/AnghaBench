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
struct karatsuba_ctx {scalar_t__ tspace; scalar_t__ tp; struct karatsuba_ctx* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct karatsuba_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct karatsuba_ctx *ctx)
{
	struct karatsuba_ctx *ctx2;

	if (ctx->tp)
		FUNC1(ctx->tp);
	if (ctx->tspace)
		FUNC1(ctx->tspace);
	for (ctx = ctx->next; ctx; ctx = ctx2) {
		ctx2 = ctx->next;
		if (ctx->tp)
			FUNC1(ctx->tp);
		if (ctx->tspace)
			FUNC1(ctx->tspace);
		FUNC0(ctx);
	}
}