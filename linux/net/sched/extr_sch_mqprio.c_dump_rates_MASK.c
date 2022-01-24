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
struct tc_mqprio_qopt {int num_tc; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct mqprio_sched {int flags; int /*<<< orphan*/ * max_rate; int /*<<< orphan*/ * min_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_MQPRIO_MAX_RATE64 ; 
 int /*<<< orphan*/  TCA_MQPRIO_MIN_RATE64 ; 
 int TC_MQPRIO_F_MAX_RATE ; 
 int TC_MQPRIO_F_MIN_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mqprio_sched *priv,
		      struct tc_mqprio_qopt *opt, struct sk_buff *skb)
{
	struct nlattr *nest;
	int i;

	if (priv->flags & TC_MQPRIO_F_MIN_RATE) {
		nest = FUNC2(skb, TCA_MQPRIO_MIN_RATE64);
		if (!nest)
			goto nla_put_failure;

		for (i = 0; i < opt->num_tc; i++) {
			if (FUNC3(skb, TCA_MQPRIO_MIN_RATE64,
				    sizeof(priv->min_rate[i]),
				    &priv->min_rate[i]))
				goto nla_put_failure;
		}
		FUNC1(skb, nest);
	}

	if (priv->flags & TC_MQPRIO_F_MAX_RATE) {
		nest = FUNC2(skb, TCA_MQPRIO_MAX_RATE64);
		if (!nest)
			goto nla_put_failure;

		for (i = 0; i < opt->num_tc; i++) {
			if (FUNC3(skb, TCA_MQPRIO_MAX_RATE64,
				    sizeof(priv->max_rate[i]),
				    &priv->max_rate[i]))
				goto nla_put_failure;
		}
		FUNC1(skb, nest);
	}
	return 0;

nla_put_failure:
	FUNC0(skb, nest);
	return -1;
}