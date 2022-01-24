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
struct nft_set_binding {int /*<<< orphan*/  list; } ;
struct nft_set {int /*<<< orphan*/  list; int /*<<< orphan*/  bindings; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFT_MSG_DELSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_ctx const*,struct nft_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nft_set*) ; 

__attribute__((used)) static void FUNC4(const struct nft_ctx *ctx, struct nft_set *set,
				 struct nft_set_binding *binding, bool event)
{
	FUNC0(&binding->list);

	if (FUNC1(&set->bindings) && FUNC3(set)) {
		FUNC0(&set->list);
		if (event)
			FUNC2(ctx, set, NFT_MSG_DELSET,
					     GFP_KERNEL);
	}
}