#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct ip6_tnl_parm {int /*<<< orphan*/  proto; } ;
struct ip6_tnl_net {struct net_device* fb_tnl_dev; } ;
struct ip6_tnl {struct net_device* dev; int /*<<< orphan*/  parms; struct net* net; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; } ;
struct __ip6_tnl_parm {int /*<<< orphan*/  proto; } ;
typedef  int /*<<< orphan*/  p1 ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EEXIST ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  IPPROTO_IPIP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct ip6_tnl*) ; 
 int FUNC1 (struct ip6_tnl*) ; 
#define  SIOCADDTUNNEL 131 
#define  SIOCCHGTUNNEL 130 
#define  SIOCDELTUNNEL 129 
#define  SIOCGETTUNNEL 128 
 int /*<<< orphan*/  FUNC2 (struct ip6_tnl_parm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ip6_tnl_parm*,int) ; 
 int FUNC4 (struct ip6_tnl*,struct ip6_tnl_parm*) ; 
 struct ip6_tnl* FUNC5 (struct net*,struct ip6_tnl_parm*,int) ; 
 int /*<<< orphan*/  ip6_tnl_net_id ; 
 int /*<<< orphan*/  FUNC6 (struct ip6_tnl_parm*,struct ip6_tnl_parm*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip6_tnl_parm*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ip6_tnl*,struct ip6_tnl_parm*) ; 
 int /*<<< orphan*/  FUNC9 (struct ip6_tnl_parm*,int /*<<< orphan*/ ,int) ; 
 struct ip6_tnl_net* FUNC10 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

__attribute__((used)) static int
FUNC14(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	int err = 0;
	struct ip6_tnl_parm p;
	struct __ip6_tnl_parm p1;
	struct ip6_tnl *t = FUNC11(dev);
	struct net *net = t->net;
	struct ip6_tnl_net *ip6n = FUNC10(net, ip6_tnl_net_id);

	FUNC9(&p1, 0, sizeof(p1));

	switch (cmd) {
	case SIOCGETTUNNEL:
		if (dev == ip6n->fb_tnl_dev) {
			if (FUNC2(&p, ifr->ifr_ifru.ifru_data, sizeof(p))) {
				err = -EFAULT;
				break;
			}
			FUNC6(&p1, &p);
			t = FUNC5(net, &p1, 0);
			if (FUNC0(t))
				t = FUNC11(dev);
		} else {
			FUNC9(&p, 0, sizeof(p));
		}
		FUNC7(&p, &t->parms);
		if (FUNC3(ifr->ifr_ifru.ifru_data, &p, sizeof(p))) {
			err = -EFAULT;
		}
		break;
	case SIOCADDTUNNEL:
	case SIOCCHGTUNNEL:
		err = -EPERM;
		if (!FUNC12(net->user_ns, CAP_NET_ADMIN))
			break;
		err = -EFAULT;
		if (FUNC2(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
			break;
		err = -EINVAL;
		if (p.proto != IPPROTO_IPV6 && p.proto != IPPROTO_IPIP &&
		    p.proto != 0)
			break;
		FUNC6(&p1, &p);
		t = FUNC5(net, &p1, cmd == SIOCADDTUNNEL);
		if (cmd == SIOCCHGTUNNEL) {
			if (!FUNC0(t)) {
				if (t->dev != dev) {
					err = -EEXIST;
					break;
				}
			} else
				t = FUNC11(dev);
			if (dev == ip6n->fb_tnl_dev)
				err = FUNC4(t, &p1);
			else
				err = FUNC8(t, &p1);
		}
		if (!FUNC0(t)) {
			err = 0;
			FUNC7(&p, &t->parms);
			if (FUNC3(ifr->ifr_ifru.ifru_data, &p, sizeof(p)))
				err = -EFAULT;

		} else {
			err = FUNC1(t);
		}
		break;
	case SIOCDELTUNNEL:
		err = -EPERM;
		if (!FUNC12(net->user_ns, CAP_NET_ADMIN))
			break;

		if (dev == ip6n->fb_tnl_dev) {
			err = -EFAULT;
			if (FUNC2(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
				break;
			err = -ENOENT;
			FUNC6(&p1, &p);
			t = FUNC5(net, &p1, 0);
			if (FUNC0(t))
				break;
			err = -EPERM;
			if (t->dev == ip6n->fb_tnl_dev)
				break;
			dev = t->dev;
		}
		err = 0;
		FUNC13(dev);
		break;
	default:
		err = -EINVAL;
	}
	return err;
}