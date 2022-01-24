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
struct sample_arg {int /*<<< orphan*/  probability; } ;
typedef  struct nlattr const nlattr ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_ACTION_ATTR_SAMPLE ; 
 int /*<<< orphan*/  OVS_SAMPLE_ATTR_ACTIONS ; 
 int /*<<< orphan*/  OVS_SAMPLE_ATTR_PROBABILITY ; 
 void* FUNC0 (struct nlattr const*) ; 
 int FUNC1 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr const*) ; 
 struct nlattr const* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct nlattr const* FUNC5 (struct nlattr const*,int*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nlattr const*,int,struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(const struct nlattr *attr,
				 struct sk_buff *skb)
{
	struct nlattr *start, *ac_start = NULL, *sample_arg;
	int err = 0, rem = FUNC1(attr);
	const struct sample_arg *arg;
	struct nlattr *actions;

	start = FUNC4(skb, OVS_ACTION_ATTR_SAMPLE);
	if (!start)
		return -EMSGSIZE;

	sample_arg = FUNC0(attr);
	arg = FUNC0(sample_arg);
	actions = FUNC5(sample_arg, &rem);

	if (FUNC6(skb, OVS_SAMPLE_ATTR_PROBABILITY, arg->probability)) {
		err = -EMSGSIZE;
		goto out;
	}

	ac_start = FUNC4(skb, OVS_SAMPLE_ATTR_ACTIONS);
	if (!ac_start) {
		err = -EMSGSIZE;
		goto out;
	}

	err = FUNC7(actions, rem, skb);

out:
	if (err) {
		FUNC2(skb, ac_start);
		FUNC2(skb, start);
	} else {
		FUNC3(skb, ac_start);
		FUNC3(skb, start);
	}

	return err;
}