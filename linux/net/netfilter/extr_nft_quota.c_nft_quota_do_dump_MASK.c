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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nft_quota {int /*<<< orphan*/  flags; int /*<<< orphan*/  consumed; int /*<<< orphan*/  quota; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_QUOTA_BYTES ; 
 int /*<<< orphan*/  NFTA_QUOTA_CONSUMED ; 
 int /*<<< orphan*/  NFTA_QUOTA_FLAGS ; 
 int /*<<< orphan*/  NFTA_QUOTA_PAD ; 
 int /*<<< orphan*/  NFT_QUOTA_DEPLETED_BIT ; 
 int /*<<< orphan*/  NFT_QUOTA_F_DEPLETED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct nft_quota *priv,
			     bool reset)
{
	u64 consumed, consumed_cap, quota;
	u32 flags = priv->flags;

	/* Since we inconditionally increment consumed quota for each packet
	 * that we see, don't go over the quota boundary in what we send to
	 * userspace.
	 */
	consumed = FUNC0(&priv->consumed);
	quota = FUNC0(&priv->quota);
	if (consumed >= quota) {
		consumed_cap = quota;
		flags |= NFT_QUOTA_F_DEPLETED;
	} else {
		consumed_cap = consumed;
	}

	if (FUNC6(skb, NFTA_QUOTA_BYTES, FUNC3(quota),
			 NFTA_QUOTA_PAD) ||
	    FUNC6(skb, NFTA_QUOTA_CONSUMED, FUNC3(consumed_cap),
			 NFTA_QUOTA_PAD) ||
	    FUNC5(skb, NFTA_QUOTA_FLAGS, FUNC4(flags)))
		goto nla_put_failure;

	if (reset) {
		FUNC1(consumed, &priv->consumed);
		FUNC2(NFT_QUOTA_DEPLETED_BIT, &priv->flags);
	}
	return 0;

nla_put_failure:
	return -1;
}