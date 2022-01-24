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
struct nft_objref_map {TYPE_1__* set; int /*<<< orphan*/  sreg; } ;
struct nft_expr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_OBJREF_SET_NAME ; 
 int /*<<< orphan*/  NFTA_OBJREF_SET_SREG ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_objref_map* FUNC1 (struct nft_expr const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_objref_map *priv = FUNC1(expr);

	if (FUNC0(skb, NFTA_OBJREF_SET_SREG, priv->sreg) ||
	    FUNC2(skb, NFTA_OBJREF_SET_NAME, priv->set->name))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -1;
}