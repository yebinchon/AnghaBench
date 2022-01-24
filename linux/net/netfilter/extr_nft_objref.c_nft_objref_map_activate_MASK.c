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
struct nft_objref_map {TYPE_1__* set; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 struct nft_objref_map* FUNC0 (struct nft_expr const*) ; 

__attribute__((used)) static void FUNC1(const struct nft_ctx *ctx,
				    const struct nft_expr *expr)
{
	struct nft_objref_map *priv = FUNC0(expr);

	priv->set->use++;
}