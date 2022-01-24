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
struct seg6_pernet_data {int /*<<< orphan*/  lock; struct in6_addr* tun_src; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t SEG6_ATTR_DST ; 
 struct net* FUNC0 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*) ; 
 struct in6_addr* FUNC2 (struct in6_addr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct in6_addr* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct in6_addr*,struct in6_addr*) ; 
 struct seg6_pernet_data* FUNC7 (struct net*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC0(info);
	struct in6_addr *val, *t_old, *t_new;
	struct seg6_pernet_data *sdata;

	sdata = FUNC7(net);

	if (!info->attrs[SEG6_ATTR_DST])
		return -EINVAL;

	val = FUNC5(info->attrs[SEG6_ATTR_DST]);
	t_new = FUNC2(val, sizeof(*val), GFP_KERNEL);
	if (!t_new)
		return -ENOMEM;

	FUNC3(&sdata->lock);

	t_old = sdata->tun_src;
	FUNC6(sdata->tun_src, t_new);

	FUNC4(&sdata->lock);

	FUNC8();
	FUNC1(t_old);

	return 0;
}