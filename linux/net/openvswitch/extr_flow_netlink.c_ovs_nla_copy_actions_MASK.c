#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tci; } ;
struct TYPE_4__ {TYPE_1__ vlan; int /*<<< orphan*/  type; } ;
struct sw_flow_key {TYPE_2__ eth; } ;
struct sw_flow_actions {int /*<<< orphan*/  orig_len; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sw_flow_actions*) ; 
 int /*<<< orphan*/  MAX_ACTIONS_BUFSIZE ; 
 int FUNC1 (struct sw_flow_actions*) ; 
 int FUNC2 (struct net*,struct nlattr const*,struct sw_flow_key const*,struct sw_flow_actions**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sw_flow_actions* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sw_flow_actions*) ; 

int FUNC7(struct net *net, const struct nlattr *attr,
			 const struct sw_flow_key *key,
			 struct sw_flow_actions **sfa, bool log)
{
	int err;

	*sfa = FUNC4(FUNC3(FUNC5(attr), MAX_ACTIONS_BUFSIZE));
	if (FUNC0(*sfa))
		return FUNC1(*sfa);

	(*sfa)->orig_len = FUNC5(attr);
	err = FUNC2(net, attr, key, sfa, key->eth.type,
				     key->eth.vlan.tci, log);
	if (err)
		FUNC6(*sfa);

	return err;
}