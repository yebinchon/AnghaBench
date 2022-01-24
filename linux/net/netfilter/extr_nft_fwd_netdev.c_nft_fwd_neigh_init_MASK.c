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
struct nft_fwd_neigh {int nfproto; void* sreg_addr; void* sreg_dev; } ;
struct nft_expr {int dummy; } ;
struct nft_ctx {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 size_t NFTA_FWD_NFPROTO ; 
 size_t NFTA_FWD_SREG_ADDR ; 
 size_t NFTA_FWD_SREG_DEV ; 
 struct nft_fwd_neigh* FUNC0 (struct nft_expr const*) ; 
 void* FUNC1 (struct nlattr const* const) ; 
 int FUNC2 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nft_ctx *ctx,
			      const struct nft_expr *expr,
			      const struct nlattr * const tb[])
{
	struct nft_fwd_neigh *priv = FUNC0(expr);
	unsigned int addr_len;
	int err;

	if (!tb[NFTA_FWD_SREG_DEV] ||
	    !tb[NFTA_FWD_SREG_ADDR] ||
	    !tb[NFTA_FWD_NFPROTO])
		return -EINVAL;

	priv->sreg_dev = FUNC1(tb[NFTA_FWD_SREG_DEV]);
	priv->sreg_addr = FUNC1(tb[NFTA_FWD_SREG_ADDR]);
	priv->nfproto = FUNC4(FUNC3(tb[NFTA_FWD_NFPROTO]));

	switch (priv->nfproto) {
	case NFPROTO_IPV4:
		addr_len = sizeof(struct in_addr);
		break;
	case NFPROTO_IPV6:
		addr_len = sizeof(struct in6_addr);
		break;
	default:
		return -EOPNOTSUPP;
	}

	err = FUNC2(priv->sreg_dev, sizeof(int));
	if (err < 0)
		return err;

	return FUNC2(priv->sreg_addr, addr_len);
}