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
 int /*<<< orphan*/  OVS_ACTION_ATTR_CLONE ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr const*) ; 
 int FUNC1 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(const struct nlattr *attr,
				struct sk_buff *skb)
{
	struct nlattr *start;
	int err = 0, rem = FUNC1(attr);

	start = FUNC4(skb, OVS_ACTION_ATTR_CLONE);
	if (!start)
		return -EMSGSIZE;

	err = FUNC5(FUNC0(attr), rem, skb);

	if (err)
		FUNC2(skb, start);
	else
		FUNC3(skb, start);

	return err;
}