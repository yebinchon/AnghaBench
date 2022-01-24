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
struct xt_target {int /*<<< orphan*/  usersize; int /*<<< orphan*/  targetsize; int /*<<< orphan*/  revision; int /*<<< orphan*/  name; } ;
struct sk_buff {int dummy; } ;
struct nft_expr {TYPE_1__* ops; } ;
struct TYPE_2__ {struct xt_target* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_TARGET_INFO ; 
 int /*<<< orphan*/  NFTA_TARGET_NAME ; 
 int /*<<< orphan*/  NFTA_TARGET_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct nft_expr const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct xt_target *target = expr->ops->data;
	void *info = FUNC1(expr);

	if (FUNC4(skb, NFTA_TARGET_NAME, target->name) ||
	    FUNC3(skb, NFTA_TARGET_REV, FUNC0(target->revision)) ||
	    FUNC2(skb, NFTA_TARGET_INFO, info,
				    target->targetsize, target->usersize))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -1;
}