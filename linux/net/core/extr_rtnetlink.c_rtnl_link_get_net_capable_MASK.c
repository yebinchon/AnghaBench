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
struct net {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 struct net* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 struct net* FUNC4 (struct net*,struct nlattr**) ; 

__attribute__((used)) static struct net *FUNC5(const struct sk_buff *skb,
					     struct net *src_net,
					     struct nlattr *tb[], int cap)
{
	struct net *net;

	net = FUNC4(src_net, tb);
	if (FUNC1(net))
		return net;

	if (!FUNC2(skb, net->user_ns, cap)) {
		FUNC3(net);
		return FUNC0(-EPERM);
	}

	return net;
}