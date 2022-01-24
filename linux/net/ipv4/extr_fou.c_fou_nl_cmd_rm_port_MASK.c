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
struct genl_info {int dummy; } ;
struct fou_cfg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net*,struct fou_cfg*) ; 
 struct net* FUNC1 (struct genl_info*) ; 
 int FUNC2 (struct genl_info*,struct fou_cfg*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC1(info);
	struct fou_cfg cfg;
	int err;

	err = FUNC2(info, &cfg);
	if (err)
		return err;

	return FUNC0(net, &cfg);
}