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
struct lwtunnel_state {size_t type; } ;
struct lwtunnel_encap_ops {int (* input ) (struct sk_buff*) ;} ;
struct dst_entry {struct lwtunnel_state* lwtstate; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t LWTUNNEL_ENCAP_MAX ; 
 size_t LWTUNNEL_ENCAP_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lwtun_encaps ; 
 struct lwtunnel_encap_ops* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct dst_entry* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 

int FUNC7(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC5(skb);
	const struct lwtunnel_encap_ops *ops;
	struct lwtunnel_state *lwtstate;
	int ret = -EINVAL;

	if (!dst)
		goto drop;
	lwtstate = dst->lwtstate;

	if (lwtstate->type == LWTUNNEL_ENCAP_NONE ||
	    lwtstate->type > LWTUNNEL_ENCAP_MAX)
		return 0;

	ret = -EOPNOTSUPP;
	FUNC3();
	ops = FUNC2(lwtun_encaps[lwtstate->type]);
	if (FUNC1(ops && ops->input))
		ret = ops->input(skb);
	FUNC4();

	if (ret == -EOPNOTSUPP)
		goto drop;

	return ret;

drop:
	FUNC0(skb);

	return ret;
}