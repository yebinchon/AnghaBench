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

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_ACTION_ATTR_SET ; 
 struct nlattr* FUNC0 (struct nlattr const*) ; 
 int FUNC1 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,size_t,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr const*) ; 

__attribute__((used)) static int FUNC6(const struct nlattr *a,
						struct sk_buff *skb)
{
	const struct nlattr *ovs_key = FUNC0(a);
	struct nlattr *nla;
	size_t key_len = FUNC1(ovs_key) / 2;

	/* Revert the conversion we did from a non-masked set action to
	 * masked set action.
	 */
	nla = FUNC3(skb, OVS_ACTION_ATTR_SET);
	if (!nla)
		return -EMSGSIZE;

	if (FUNC4(skb, FUNC5(ovs_key), key_len, FUNC0(ovs_key)))
		return -EMSGSIZE;

	FUNC2(skb, nla);
	return 0;
}