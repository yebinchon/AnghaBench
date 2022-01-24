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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int* metrics; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DST_FEATURE_MASK ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int RTAX_CC_ALGO ; 
 int RTAX_FEATURES ; 
 int RTAX_FEATURE_MASK ; 
 int RTAX_MAX ; 
 int /*<<< orphan*/  RTA_METRICS ; 
 int TCP_CA_NAME_MAX ; 
 TYPE_1__ dst_default_metrics ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int,char*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,int) ; 
 char* FUNC6 (int,char*) ; 

int FUNC7(struct sk_buff *skb, u32 *metrics)
{
	struct nlattr *mx;
	int i, valid = 0;

	/* nothing is dumped for dst_default_metrics, so just skip the loop */
	if (metrics == dst_default_metrics.metrics)
		return 0;

	mx = FUNC3(skb, RTA_METRICS);
	if (mx == NULL)
		return -ENOBUFS;

	for (i = 0; i < RTAX_MAX; i++) {
		if (metrics[i]) {
			if (i == RTAX_CC_ALGO - 1) {
				char tmp[TCP_CA_NAME_MAX], *name;

				name = FUNC6(metrics[i], tmp);
				if (!name)
					continue;
				if (FUNC4(skb, i + 1, name))
					goto nla_put_failure;
			} else if (i == RTAX_FEATURES - 1) {
				u32 user_features = metrics[i] & RTAX_FEATURE_MASK;

				if (!user_features)
					continue;
				FUNC0(RTAX_FEATURE_MASK & DST_FEATURE_MASK);
				if (FUNC5(skb, i + 1, user_features))
					goto nla_put_failure;
			} else {
				if (FUNC5(skb, i + 1, metrics[i]))
					goto nla_put_failure;
			}
			valid++;
		}
	}

	if (!valid) {
		FUNC1(skb, mx);
		return 0;
	}

	return FUNC2(skb, mx);

nla_put_failure:
	FUNC1(skb, mx);
	return -EMSGSIZE;
}