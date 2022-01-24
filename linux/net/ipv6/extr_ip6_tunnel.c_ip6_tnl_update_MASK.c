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
struct net {int dummy; } ;
struct ip6_tnl_net {int dummy; } ;
struct ip6_tnl {int /*<<< orphan*/  dev; struct net* net; } ;
struct __ip6_tnl_parm {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ip6_tnl*,struct __ip6_tnl_parm*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip6_tnl_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  ip6_tnl_net_id ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_tnl_net*,struct ip6_tnl*) ; 
 struct ip6_tnl_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct ip6_tnl *t, struct __ip6_tnl_parm *p)
{
	struct net *net = t->net;
	struct ip6_tnl_net *ip6n = FUNC3(net, ip6_tnl_net_id);
	int err;

	FUNC2(ip6n, t);
	FUNC5();
	err = FUNC0(t, p);
	FUNC1(ip6n, t);
	FUNC4(t->dev);
	return err;
}