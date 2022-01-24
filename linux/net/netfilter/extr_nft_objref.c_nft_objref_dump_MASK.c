#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct nft_object {TYPE_3__* ops; TYPE_1__ key; } ;
struct nft_expr {int dummy; } ;
struct TYPE_6__ {TYPE_2__* type; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_OBJREF_IMM_NAME ; 
 int /*<<< orphan*/  NFTA_OBJREF_IMM_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nft_object* FUNC1 (struct nft_expr const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const struct nft_expr *expr)
{
	const struct nft_object *obj = FUNC1(expr);

	if (FUNC3(skb, NFTA_OBJREF_IMM_NAME, obj->key.name) ||
	    FUNC2(skb, NFTA_OBJREF_IMM_TYPE,
			 FUNC0(obj->ops->type->type)))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -1;
}