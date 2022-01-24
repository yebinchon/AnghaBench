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
typedef  int u32 ;
struct nlattr {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_data_desc {int /*<<< orphan*/  len; } ;
struct nft_data {int* data; } ;
struct nft_ctx {int dummy; } ;
struct nft_cmp_fast_expr {int data; int /*<<< orphan*/  len; int /*<<< orphan*/  sreg; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_BYTE ; 
 size_t NFTA_CMP_DATA ; 
 size_t NFTA_CMP_SREG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nft_data*,int,struct nft_data_desc*,struct nlattr const* const) ; 
 struct nft_cmp_fast_expr* FUNC2 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nft_ctx *ctx,
			     const struct nft_expr *expr,
			     const struct nlattr * const tb[])
{
	struct nft_cmp_fast_expr *priv = FUNC2(expr);
	struct nft_data_desc desc;
	struct nft_data data;
	u32 mask;
	int err;

	err = FUNC1(NULL, &data, sizeof(data), &desc,
			    tb[NFTA_CMP_DATA]);
	if (err < 0)
		return err;

	priv->sreg = FUNC3(tb[NFTA_CMP_SREG]);
	err = FUNC4(priv->sreg, desc.len);
	if (err < 0)
		return err;

	desc.len *= BITS_PER_BYTE;
	mask = FUNC0(desc.len);

	priv->data = data.data[0] & mask;
	priv->len  = desc.len;
	return 0;
}