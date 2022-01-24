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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct __ip6_tnl_parm {int flags; scalar_t__ link; } ;
struct ip6_tnl {struct net* net; struct __ip6_tnl_parm parms; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFA_F_TENTATIVE ; 
 int IP6_TNL_F_ALLOW_LOCAL_REMOTE ; 
 int IP6_TNL_F_CAP_PER_PACKET ; 
 int IP6_TNL_F_CAP_RCV ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 int FUNC1 (struct ip6_tnl*,struct in6_addr const*,struct in6_addr const*) ; 
 scalar_t__ FUNC2 (struct in6_addr const*) ; 
 int FUNC3 (struct net*,struct in6_addr const*,struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct ip6_tnl *t,
				  const struct in6_addr *laddr,
				  const struct in6_addr *raddr)
{
	struct __ip6_tnl_parm *p = &t->parms;
	int ret = 0;
	struct net *net = t->net;

	if ((p->flags & IP6_TNL_F_CAP_RCV) ||
	    ((p->flags & IP6_TNL_F_CAP_PER_PACKET) &&
	     (FUNC1(t, laddr, raddr) & IP6_TNL_F_CAP_RCV))) {
		struct net_device *ldev = NULL;

		if (p->link)
			ldev = FUNC0(net, p->link);

		if ((FUNC2(laddr) ||
		     FUNC4(FUNC3(net, laddr, ldev, false,
						    0, IFA_F_TENTATIVE))) &&
		    ((p->flags & IP6_TNL_F_ALLOW_LOCAL_REMOTE) ||
		     FUNC4(!FUNC3(net, raddr, ldev, true,
						     0, IFA_F_TENTATIVE))))
			ret = 1;
	}
	return ret;
}