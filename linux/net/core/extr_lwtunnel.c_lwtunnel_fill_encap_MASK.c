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
struct lwtunnel_state {size_t type; } ;
struct lwtunnel_encap_ops {int (* fill_encap ) (struct sk_buff*,struct lwtunnel_state*) ;} ;

/* Variables and functions */
 int EMSGSIZE ; 
 int EOPNOTSUPP ; 
 size_t LWTUNNEL_ENCAP_MAX ; 
 size_t LWTUNNEL_ENCAP_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lwtun_encaps ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int) ; 
 int FUNC4 (struct sk_buff*,int,size_t) ; 
 struct lwtunnel_encap_ops* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct sk_buff*,struct lwtunnel_state*) ; 

int FUNC9(struct sk_buff *skb, struct lwtunnel_state *lwtstate,
			int encap_attr, int encap_type_attr)
{
	const struct lwtunnel_encap_ops *ops;
	struct nlattr *nest;
	int ret;

	if (!lwtstate)
		return 0;

	if (lwtstate->type == LWTUNNEL_ENCAP_NONE ||
	    lwtstate->type > LWTUNNEL_ENCAP_MAX)
		return 0;

	nest = FUNC3(skb, encap_attr);
	if (!nest)
		return -EMSGSIZE;

	ret = -EOPNOTSUPP;
	FUNC6();
	ops = FUNC5(lwtun_encaps[lwtstate->type]);
	if (FUNC0(ops && ops->fill_encap))
		ret = ops->fill_encap(skb, lwtstate);
	FUNC7();

	if (ret)
		goto nla_put_failure;
	FUNC2(skb, nest);
	ret = FUNC4(skb, encap_type_attr, lwtstate->type);
	if (ret)
		goto nla_put_failure;

	return 0;

nla_put_failure:
	FUNC1(skb, nest);

	return (ret == -EOPNOTSUPP ? 0 : ret);
}