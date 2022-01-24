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
typedef  scalar_t__ u64 ;
struct nlattr {int dummy; } ;
struct nft_quota {unsigned long flags; int /*<<< orphan*/  consumed; int /*<<< orphan*/  quota; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EOVERFLOW ; 
 size_t NFTA_QUOTA_BYTES ; 
 size_t NFTA_QUOTA_CONSUMED ; 
 size_t NFTA_QUOTA_FLAGS ; 
 unsigned long NFT_QUOTA_F_DEPLETED ; 
 unsigned long NFT_QUOTA_F_INV ; 
 scalar_t__ S64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const* const) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct nlattr * const tb[],
			     struct nft_quota *priv)
{
	unsigned long flags = 0;
	u64 quota, consumed = 0;

	if (!tb[NFTA_QUOTA_BYTES])
		return -EINVAL;

	quota = FUNC1(FUNC3(tb[NFTA_QUOTA_BYTES]));
	if (quota > S64_MAX)
		return -EOVERFLOW;

	if (tb[NFTA_QUOTA_CONSUMED]) {
		consumed = FUNC1(FUNC3(tb[NFTA_QUOTA_CONSUMED]));
		if (consumed > quota)
			return -EINVAL;
	}

	if (tb[NFTA_QUOTA_FLAGS]) {
		flags = FUNC4(FUNC2(tb[NFTA_QUOTA_FLAGS]));
		if (flags & ~NFT_QUOTA_F_INV)
			return -EINVAL;
		if (flags & NFT_QUOTA_F_DEPLETED)
			return -EOPNOTSUPP;
	}

	FUNC0(&priv->quota, quota);
	priv->flags = flags;
	FUNC0(&priv->consumed, consumed);

	return 0;
}