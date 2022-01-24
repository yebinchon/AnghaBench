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
typedef  void* u32 ;
struct nlattr {int dummy; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct nft_byteorder {int op; int size; void* len; void* dreg; void* sreg; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NFTA_BYTEORDER_DREG ; 
 size_t NFTA_BYTEORDER_LEN ; 
 size_t NFTA_BYTEORDER_OP ; 
 size_t NFTA_BYTEORDER_SIZE ; 
 size_t NFTA_BYTEORDER_SREG ; 
#define  NFT_BYTEORDER_HTON 129 
#define  NFT_BYTEORDER_NTOH 128 
 int /*<<< orphan*/  NFT_DATA_VALUE ; 
 int /*<<< orphan*/  U8_MAX ; 
 struct nft_byteorder* FUNC0 (struct nft_expr const*) ; 
 void* FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (struct nlattr const* const,int /*<<< orphan*/ ,void**) ; 
 int FUNC3 (void*,void*) ; 
 int FUNC4 (struct nft_ctx const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr const* const) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const struct nft_ctx *ctx,
			      const struct nft_expr *expr,
			      const struct nlattr * const tb[])
{
	struct nft_byteorder *priv = FUNC0(expr);
	u32 size, len;
	int err;

	if (tb[NFTA_BYTEORDER_SREG] == NULL ||
	    tb[NFTA_BYTEORDER_DREG] == NULL ||
	    tb[NFTA_BYTEORDER_LEN] == NULL ||
	    tb[NFTA_BYTEORDER_SIZE] == NULL ||
	    tb[NFTA_BYTEORDER_OP] == NULL)
		return -EINVAL;

	priv->op = FUNC6(FUNC5(tb[NFTA_BYTEORDER_OP]));
	switch (priv->op) {
	case NFT_BYTEORDER_NTOH:
	case NFT_BYTEORDER_HTON:
		break;
	default:
		return -EINVAL;
	}

	err = FUNC2(tb[NFTA_BYTEORDER_SIZE], U8_MAX, &size);
	if (err < 0)
		return err;

	priv->size = size;

	switch (priv->size) {
	case 2:
	case 4:
	case 8:
		break;
	default:
		return -EINVAL;
	}

	priv->sreg = FUNC1(tb[NFTA_BYTEORDER_SREG]);
	err = FUNC2(tb[NFTA_BYTEORDER_LEN], U8_MAX, &len);
	if (err < 0)
		return err;

	priv->len = len;

	err = FUNC3(priv->sreg, priv->len);
	if (err < 0)
		return err;

	priv->dreg = FUNC1(tb[NFTA_BYTEORDER_DREG]);
	return FUNC4(ctx, priv->dreg, NULL,
					   NFT_DATA_VALUE, priv->len);
}