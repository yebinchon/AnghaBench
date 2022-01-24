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
struct nft_object {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  family; int /*<<< orphan*/  net; } ;
struct nft_ct_helper_obj {scalar_t__ helper6; scalar_t__ helper4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_ct_helper_obj* FUNC2 (struct nft_object*) ; 

__attribute__((used)) static void FUNC3(const struct nft_ctx *ctx,
				      struct nft_object *obj)
{
	struct nft_ct_helper_obj *priv = FUNC2(obj);

	if (priv->helper4)
		FUNC0(priv->helper4);
	if (priv->helper6)
		FUNC0(priv->helper6);

	FUNC1(ctx->net, ctx->family);
}