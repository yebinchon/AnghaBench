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
struct sw_flow_actions {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct check_pkt_len_arg {int exec_for_lesser_equal; int exec_for_greater; scalar_t__ pkt_len; } ;
typedef  int /*<<< orphan*/  arg ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 size_t OVS_ACTION_ATTR_CHECK_PKT_LEN ; 
 size_t OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER ; 
 size_t OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL ; 
 int /*<<< orphan*/  OVS_CHECK_PKT_LEN_ATTR_ARG ; 
 int /*<<< orphan*/  OVS_CHECK_PKT_LEN_ATTR_MAX ; 
 size_t OVS_CHECK_PKT_LEN_ATTR_PKT_LEN ; 
 int FUNC0 (struct net*,struct nlattr const*,struct sw_flow_key const*,struct sw_flow_actions**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sw_flow_actions*,int) ; 
 int FUNC3 (struct sw_flow_actions**,size_t,int) ; 
 int /*<<< orphan*/  cpl_policy ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const*) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr const*) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sw_flow_actions**,int /*<<< orphan*/ ,struct check_pkt_len_arg*,int,int) ; 

__attribute__((used)) static int FUNC9(struct net *net,
					   const struct nlattr *attr,
					   const struct sw_flow_key *key,
					   struct sw_flow_actions **sfa,
					   __be16 eth_type, __be16 vlan_tci,
					   bool log, bool last)
{
	const struct nlattr *acts_if_greater, *acts_if_lesser_eq;
	struct nlattr *a[OVS_CHECK_PKT_LEN_ATTR_MAX + 1];
	struct check_pkt_len_arg arg;
	int nested_acts_start;
	int start, err;

	err = FUNC7(a, OVS_CHECK_PKT_LEN_ATTR_MAX,
					  FUNC4(attr), FUNC6(attr),
					  cpl_policy, NULL);
	if (err)
		return err;

	if (!a[OVS_CHECK_PKT_LEN_ATTR_PKT_LEN] ||
	    !FUNC5(a[OVS_CHECK_PKT_LEN_ATTR_PKT_LEN]))
		return -EINVAL;

	acts_if_lesser_eq = a[OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL];
	acts_if_greater = a[OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER];

	/* Both the nested action should be present. */
	if (!acts_if_greater || !acts_if_lesser_eq)
		return -EINVAL;

	/* validation done, copy the nested actions. */
	start = FUNC3(sfa, OVS_ACTION_ATTR_CHECK_PKT_LEN,
					log);
	if (start < 0)
		return start;

	arg.pkt_len = FUNC5(a[OVS_CHECK_PKT_LEN_ATTR_PKT_LEN]);
	arg.exec_for_lesser_equal =
		last || !FUNC1(acts_if_lesser_eq);
	arg.exec_for_greater =
		last || !FUNC1(acts_if_greater);

	err = FUNC8(sfa, OVS_CHECK_PKT_LEN_ATTR_ARG, &arg,
				 sizeof(arg), log);
	if (err)
		return err;

	nested_acts_start = FUNC3(sfa,
		OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL, log);
	if (nested_acts_start < 0)
		return nested_acts_start;

	err = FUNC0(net, acts_if_lesser_eq, key, sfa,
				     eth_type, vlan_tci, log);

	if (err)
		return err;

	FUNC2(*sfa, nested_acts_start);

	nested_acts_start = FUNC3(sfa,
		OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER, log);
	if (nested_acts_start < 0)
		return nested_acts_start;

	err = FUNC0(net, acts_if_greater, key, sfa,
				     eth_type, vlan_tci, log);

	if (err)
		return err;

	FUNC2(*sfa, nested_acts_start);
	FUNC2(*sfa, start);
	return 0;
}