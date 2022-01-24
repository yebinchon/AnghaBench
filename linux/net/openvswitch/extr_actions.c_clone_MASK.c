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
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct datapath*,struct sk_buff*,struct sw_flow_key*,int /*<<< orphan*/ ,struct nlattr*,int,int,int) ; 
 struct nlattr* FUNC1 (struct nlattr const*) ; 
 int FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct nlattr const*) ; 
 struct nlattr* FUNC4 (struct nlattr*,int*) ; 

__attribute__((used)) static int FUNC5(struct datapath *dp, struct sk_buff *skb,
		 struct sw_flow_key *key, const struct nlattr *attr,
		 bool last)
{
	struct nlattr *actions;
	struct nlattr *clone_arg;
	int rem = FUNC3(attr);
	bool dont_clone_flow_key;

	/* The first action is always 'OVS_CLONE_ATTR_ARG'. */
	clone_arg = FUNC1(attr);
	dont_clone_flow_key = FUNC2(clone_arg);
	actions = FUNC4(clone_arg, &rem);

	return FUNC0(dp, skb, key, 0, actions, rem, last,
			     !dont_clone_flow_key);
}