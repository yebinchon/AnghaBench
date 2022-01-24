#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct gss_cl_ctx* data; } ;
struct TYPE_3__ {struct gss_cl_ctx* data; } ;
struct gss_cl_ctx {TYPE_2__ gc_acceptor; TYPE_1__ gc_wire_ctx; int /*<<< orphan*/  gc_gss_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gss_cl_ctx*) ; 

__attribute__((used)) static void
FUNC2(struct gss_cl_ctx *ctx)
{
	FUNC0(&ctx->gc_gss_ctx);
	FUNC1(ctx->gc_wire_ctx.data);
	FUNC1(ctx->gc_acceptor.data);
	FUNC1(ctx);
}