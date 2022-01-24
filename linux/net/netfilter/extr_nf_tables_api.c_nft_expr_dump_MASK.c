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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_expr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*,struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,unsigned int) ; 

int FUNC3(struct sk_buff *skb, unsigned int attr,
		  const struct nft_expr *expr)
{
	struct nlattr *nest;

	nest = FUNC2(skb, attr);
	if (!nest)
		goto nla_put_failure;
	if (FUNC0(skb, expr) < 0)
		goto nla_put_failure;
	FUNC1(skb, nest);
	return 0;

nla_put_failure:
	return -1;
}