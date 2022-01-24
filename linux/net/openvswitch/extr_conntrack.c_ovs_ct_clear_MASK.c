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
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_CT_UNTRACKED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sw_flow_key*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

int FUNC4(struct sk_buff *skb, struct sw_flow_key *key)
{
	if (FUNC3(skb)) {
		FUNC0(FUNC3(skb));
		FUNC1(skb, NULL, IP_CT_UNTRACKED);
		FUNC2(skb, key);
	}

	return 0;
}