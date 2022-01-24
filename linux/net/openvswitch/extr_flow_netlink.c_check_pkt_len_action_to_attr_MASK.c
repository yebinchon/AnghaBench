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
struct check_pkt_len_arg {int /*<<< orphan*/  pkt_len; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_ACTION_ATTR_CHECK_PKT_LEN ; 
 int /*<<< orphan*/  OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER ; 
 int /*<<< orphan*/  OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL ; 
 int /*<<< orphan*/  OVS_CHECK_PKT_LEN_ATTR_PKT_LEN ; 
 void* FUNC0 (struct nlattr const*) ; 
 int FUNC1 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC5 (struct nlattr const*,int*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int,struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(const struct nlattr *attr,
					struct sk_buff *skb)
{
	struct nlattr *start, *ac_start = NULL;
	const struct check_pkt_len_arg *arg;
	const struct nlattr *a, *cpl_arg;
	int err = 0, rem = FUNC1(attr);

	start = FUNC4(skb, OVS_ACTION_ATTR_CHECK_PKT_LEN);
	if (!start)
		return -EMSGSIZE;

	/* The first nested attribute in 'attr' is always
	 * 'OVS_CHECK_PKT_LEN_ATTR_ARG'.
	 */
	cpl_arg = FUNC0(attr);
	arg = FUNC0(cpl_arg);

	if (FUNC6(skb, OVS_CHECK_PKT_LEN_ATTR_PKT_LEN, arg->pkt_len)) {
		err = -EMSGSIZE;
		goto out;
	}

	/* Second nested attribute in 'attr' is always
	 * 'OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL'.
	 */
	a = FUNC5(cpl_arg, &rem);
	ac_start =  FUNC4(skb,
					  OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL);
	if (!ac_start) {
		err = -EMSGSIZE;
		goto out;
	}

	err = FUNC7(FUNC0(a), FUNC1(a), skb);
	if (err) {
		FUNC2(skb, ac_start);
		goto out;
	} else {
		FUNC3(skb, ac_start);
	}

	/* Third nested attribute in 'attr' is always
	 * OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER.
	 */
	a = FUNC5(a, &rem);
	ac_start =  FUNC4(skb,
					  OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER);
	if (!ac_start) {
		err = -EMSGSIZE;
		goto out;
	}

	err = FUNC7(FUNC0(a), FUNC1(a), skb);
	if (err) {
		FUNC2(skb, ac_start);
		goto out;
	} else {
		FUNC3(skb, ac_start);
	}

	FUNC3(skb, start);
	return 0;

out:
	FUNC2(skb, start);
	return err;
}