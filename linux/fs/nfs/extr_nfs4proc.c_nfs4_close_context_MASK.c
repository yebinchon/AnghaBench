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
struct nfs_open_context {int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nfs_open_context *ctx, int is_sync)
{
	if (ctx->state == NULL)
		return;
	if (is_sync)
		FUNC2(ctx->state, FUNC0(ctx));
	else
		FUNC1(ctx->state, FUNC0(ctx));
}