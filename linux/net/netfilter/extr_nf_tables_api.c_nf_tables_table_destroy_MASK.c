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
struct nft_ctx {TYPE_1__* table; } ;
struct TYPE_2__ {scalar_t__ use; struct TYPE_2__* name; int /*<<< orphan*/  chains_ht; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nft_ctx *ctx)
{
	if (FUNC0(ctx->table->use > 0))
		return;

	FUNC2(&ctx->table->chains_ht);
	FUNC1(ctx->table->name);
	FUNC1(ctx->table);
}