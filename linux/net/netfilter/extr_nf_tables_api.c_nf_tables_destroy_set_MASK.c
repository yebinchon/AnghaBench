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
struct nft_set {int /*<<< orphan*/  bindings; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_set*) ; 
 scalar_t__ FUNC2 (struct nft_set*) ; 

void FUNC3(const struct nft_ctx *ctx, struct nft_set *set)
{
	if (FUNC0(&set->bindings) && FUNC2(set))
		FUNC1(set);
}