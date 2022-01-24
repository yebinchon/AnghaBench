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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct nft_limit {int burst; int /*<<< orphan*/  rate; int /*<<< orphan*/  nsecs; scalar_t__ invert; } ;
typedef  enum nft_limit_type { ____Placeholder_nft_limit_type } nft_limit_type ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_LIMIT_BURST ; 
 int /*<<< orphan*/  NFTA_LIMIT_FLAGS ; 
 int /*<<< orphan*/  NFTA_LIMIT_PAD ; 
 int /*<<< orphan*/  NFTA_LIMIT_RATE ; 
 int /*<<< orphan*/  NFTA_LIMIT_TYPE ; 
 int /*<<< orphan*/  NFTA_LIMIT_UNIT ; 
 int NFT_LIMIT_F_INV ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct nft_limit *limit,
			  enum nft_limit_type type)
{
	u32 flags = limit->invert ? NFT_LIMIT_F_INV : 0;
	u64 secs = FUNC1(limit->nsecs, NSEC_PER_SEC);

	if (FUNC4(skb, NFTA_LIMIT_RATE, FUNC0(limit->rate),
			 NFTA_LIMIT_PAD) ||
	    FUNC4(skb, NFTA_LIMIT_UNIT, FUNC0(secs),
			 NFTA_LIMIT_PAD) ||
	    FUNC3(skb, NFTA_LIMIT_BURST, FUNC2(limit->burst)) ||
	    FUNC3(skb, NFTA_LIMIT_TYPE, FUNC2(type)) ||
	    FUNC3(skb, NFTA_LIMIT_FLAGS, FUNC2(flags)))
		goto nla_put_failure;
	return 0;

nla_put_failure:
	return -1;
}