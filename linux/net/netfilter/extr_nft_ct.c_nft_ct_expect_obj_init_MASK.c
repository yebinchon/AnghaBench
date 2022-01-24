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
struct nlattr {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_ctx {int /*<<< orphan*/  family; int /*<<< orphan*/  net; } ;
struct nft_ct_expect_obj {void* size; int /*<<< orphan*/  timeout; int /*<<< orphan*/  dport; void* l4proto; int /*<<< orphan*/  l3num; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NFTA_CT_EXPECT_DPORT ; 
 size_t NFTA_CT_EXPECT_L3PROTO ; 
 size_t NFTA_CT_EXPECT_L4PROTO ; 
 size_t NFTA_CT_EXPECT_SIZE ; 
 size_t NFTA_CT_EXPECT_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_ct_expect_obj* FUNC1 (struct nft_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 void* FUNC4 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct nft_ctx *ctx,
				  const struct nlattr * const tb[],
				  struct nft_object *obj)
{
	struct nft_ct_expect_obj *priv = FUNC1(obj);

	if (!tb[NFTA_CT_EXPECT_L4PROTO] ||
	    !tb[NFTA_CT_EXPECT_DPORT] ||
	    !tb[NFTA_CT_EXPECT_TIMEOUT] ||
	    !tb[NFTA_CT_EXPECT_SIZE])
		return -EINVAL;

	priv->l3num = ctx->family;
	if (tb[NFTA_CT_EXPECT_L3PROTO])
		priv->l3num = FUNC5(FUNC2(tb[NFTA_CT_EXPECT_L3PROTO]));

	priv->l4proto = FUNC4(tb[NFTA_CT_EXPECT_L4PROTO]);
	priv->dport = FUNC2(tb[NFTA_CT_EXPECT_DPORT]);
	priv->timeout = FUNC3(tb[NFTA_CT_EXPECT_TIMEOUT]);
	priv->size = FUNC4(tb[NFTA_CT_EXPECT_SIZE]);

	return FUNC0(ctx->net, ctx->family);
}