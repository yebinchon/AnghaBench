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
struct net {int dummy; } ;
struct ila_xlat_params {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 struct net* FUNC0 (struct genl_info*) ; 
 int FUNC1 (struct net*,struct ila_xlat_params*) ; 
 int FUNC2 (struct genl_info*,struct ila_xlat_params*) ; 

int FUNC3(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC0(info);
	struct ila_xlat_params p;
	int err;

	err = FUNC2(info, &p);
	if (err)
		return err;

	return FUNC1(net, &p);
}