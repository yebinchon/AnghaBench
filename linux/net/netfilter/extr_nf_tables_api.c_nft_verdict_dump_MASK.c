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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_verdict {int code; TYPE_1__* chain; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_VERDICT_CHAIN ; 
 int /*<<< orphan*/  NFTA_VERDICT_CODE ; 
#define  NFT_GOTO 129 
#define  NFT_JUMP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct sk_buff *skb, int type, const struct nft_verdict *v)
{
	struct nlattr *nest;

	nest = FUNC2(skb, type);
	if (!nest)
		goto nla_put_failure;

	if (FUNC3(skb, NFTA_VERDICT_CODE, FUNC0(v->code)))
		goto nla_put_failure;

	switch (v->code) {
	case NFT_JUMP:
	case NFT_GOTO:
		if (FUNC4(skb, NFTA_VERDICT_CHAIN,
				   v->chain->name))
			goto nla_put_failure;
	}
	FUNC1(skb, nest);
	return 0;

nla_put_failure:
	return -1;
}