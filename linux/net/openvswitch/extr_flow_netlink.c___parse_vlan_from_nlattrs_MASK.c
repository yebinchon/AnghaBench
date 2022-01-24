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
typedef  int u64 ;
struct sw_flow_match {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int OVS_KEY_ATTR_ENCAP ; 
 int OVS_KEY_ATTR_ETHERTYPE ; 
 int OVS_KEY_ATTR_VLAN ; 
 int FUNC0 (struct sw_flow_match*,struct nlattr const**,int,int) ; 
 int FUNC1 (struct nlattr const*,struct nlattr const**,int*,int) ; 
 int FUNC2 (struct nlattr const*,struct nlattr const**,int*,int) ; 
 int FUNC3 (struct sw_flow_match*,int,int,struct nlattr const**,int) ; 
 int FUNC4 (struct sw_flow_match*,int,int,struct nlattr const**,int) ; 

__attribute__((used)) static int FUNC5(struct sw_flow_match *match,
				     u64 *key_attrs, bool inner,
				     const struct nlattr **a, bool is_mask,
				     bool log)
{
	int err;
	const struct nlattr *encap;

	if (!is_mask)
		err = FUNC3(match, *key_attrs, inner,
						 a, log);
	else
		err = FUNC4(match, *key_attrs, inner,
						      a, log);
	if (err <= 0)
		return err;

	err = FUNC0(match, a, is_mask, inner);
	if (err)
		return err;

	*key_attrs &= ~(1 << OVS_KEY_ATTR_ENCAP);
	*key_attrs &= ~(1 << OVS_KEY_ATTR_VLAN);
	*key_attrs &= ~(1 << OVS_KEY_ATTR_ETHERTYPE);

	encap = a[OVS_KEY_ATTR_ENCAP];

	if (!is_mask)
		err = FUNC2(encap, a, key_attrs, log);
	else
		err = FUNC1(encap, a, key_attrs, log);

	return err;
}