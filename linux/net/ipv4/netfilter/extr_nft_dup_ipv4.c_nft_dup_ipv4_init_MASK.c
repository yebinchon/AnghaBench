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
struct nft_expr {int dummy; } ;
struct nft_dup_ipv4 {void* sreg_dev; void* sreg_addr; } ;
struct nft_ctx {int dummy; } ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NFTA_DUP_SREG_ADDR ; 
 size_t NFTA_DUP_SREG_DEV ; 
 struct nft_dup_ipv4* FUNC0 (struct nft_expr const*) ; 
 void* FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (void*,int) ; 

__attribute__((used)) static int FUNC3(const struct nft_ctx *ctx,
			     const struct nft_expr *expr,
			     const struct nlattr * const tb[])
{
	struct nft_dup_ipv4 *priv = FUNC0(expr);
	int err;

	if (tb[NFTA_DUP_SREG_ADDR] == NULL)
		return -EINVAL;

	priv->sreg_addr = FUNC1(tb[NFTA_DUP_SREG_ADDR]);
	err = FUNC2(priv->sreg_addr, sizeof(struct in_addr));
	if (err < 0)
		return err;

	if (tb[NFTA_DUP_SREG_DEV] != NULL) {
		priv->sreg_dev = FUNC1(tb[NFTA_DUP_SREG_DEV]);
		return FUNC2(priv->sreg_dev, sizeof(int));
	}
	return 0;
}