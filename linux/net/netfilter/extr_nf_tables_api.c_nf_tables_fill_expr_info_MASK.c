#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct nft_expr {TYPE_2__* ops; } ;
struct TYPE_4__ {scalar_t__ (* dump ) (struct sk_buff*,struct nft_expr const*) ;TYPE_1__* type; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_EXPR_DATA ; 
 int /*<<< orphan*/  NFTA_EXPR_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct nft_expr const*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
				    const struct nft_expr *expr)
{
	if (FUNC2(skb, NFTA_EXPR_NAME, expr->ops->type->name))
		goto nla_put_failure;

	if (expr->ops->dump) {
		struct nlattr *data = FUNC1(skb,
							    NFTA_EXPR_DATA);
		if (data == NULL)
			goto nla_put_failure;
		if (expr->ops->dump(skb, expr) < 0)
			goto nla_put_failure;
		FUNC0(skb, data);
	}

	return skb->len;

nla_put_failure:
	return -1;
}