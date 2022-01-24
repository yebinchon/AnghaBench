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
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t IFLA_NET_NS_FD ; 
 size_t IFLA_NET_NS_PID ; 
 size_t IFLA_TARGET_NETNSID ; 
 struct net* FUNC1 (struct net*) ; 
 struct net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 struct net* FUNC4 (struct net*,struct nlattr**) ; 

__attribute__((used)) static struct net *FUNC5(struct net *src_net,
					       struct nlattr *tb[])
{
	struct net *net;

	if (tb[IFLA_NET_NS_PID] || tb[IFLA_NET_NS_FD])
		return FUNC4(src_net, tb);

	if (!tb[IFLA_TARGET_NETNSID])
		return FUNC1(src_net);

	net = FUNC2(src_net, FUNC3(tb[IFLA_TARGET_NETNSID]));
	if (!net)
		return FUNC0(-EINVAL);

	return net;
}