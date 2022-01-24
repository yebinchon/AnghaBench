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
struct net_device {unsigned int flags; int /*<<< orphan*/  type; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  ttl; } ;
struct ip_tunnel_parm {int i_flags; int o_flags; TYPE_1__ iph; int /*<<< orphan*/  o_key; int /*<<< orphan*/  i_key; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; int /*<<< orphan*/  type; } ;
struct ip_tunnel {struct net_device* dev; int /*<<< orphan*/  parms; int /*<<< orphan*/  ip_tnl_net_id; struct net* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 unsigned int IFF_BROADCAST ; 
 unsigned int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  IP_DF ; 
 int FUNC0 (struct ip_tunnel*) ; 
#define  SIOCADDTUNNEL 131 
#define  SIOCCHGTUNNEL 130 
#define  SIOCDELTUNNEL 129 
#define  SIOCGETTUNNEL 128 
 int TUNNEL_KEY ; 
 int VTI_ISVTI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC2 (struct net*,struct ip_tunnel_net*,struct ip_tunnel_parm*) ; 
 struct ip_tunnel* FUNC3 (struct ip_tunnel_net*,struct ip_tunnel_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_tunnel_net*,struct ip_tunnel*,struct net_device*,struct ip_tunnel_parm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_tunnel_parm*,int /*<<< orphan*/ *,int) ; 
 struct ip_tunnel_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

int FUNC11(struct net_device *dev, struct ip_tunnel_parm *p, int cmd)
{
	int err = 0;
	struct ip_tunnel *t = FUNC8(dev);
	struct net *net = t->net;
	struct ip_tunnel_net *itn = FUNC7(net, t->ip_tnl_net_id);

	switch (cmd) {
	case SIOCGETTUNNEL:
		if (dev == itn->fb_tunnel_dev) {
			t = FUNC3(itn, p, itn->fb_tunnel_dev->type);
			if (!t)
				t = FUNC8(dev);
		}
		FUNC6(p, &t->parms, sizeof(*p));
		break;

	case SIOCADDTUNNEL:
	case SIOCCHGTUNNEL:
		err = -EPERM;
		if (!FUNC9(net->user_ns, CAP_NET_ADMIN))
			goto done;
		if (p->iph.ttl)
			p->iph.frag_off |= FUNC1(IP_DF);
		if (!(p->i_flags & VTI_ISVTI)) {
			if (!(p->i_flags & TUNNEL_KEY))
				p->i_key = 0;
			if (!(p->o_flags & TUNNEL_KEY))
				p->o_key = 0;
		}

		t = FUNC3(itn, p, itn->type);

		if (cmd == SIOCADDTUNNEL) {
			if (!t) {
				t = FUNC2(net, itn, p);
				err = FUNC0(t);
				break;
			}

			err = -EEXIST;
			break;
		}
		if (dev != itn->fb_tunnel_dev && cmd == SIOCCHGTUNNEL) {
			if (t) {
				if (t->dev != dev) {
					err = -EEXIST;
					break;
				}
			} else {
				unsigned int nflags = 0;

				if (FUNC5(p->iph.daddr))
					nflags = IFF_BROADCAST;
				else if (p->iph.daddr)
					nflags = IFF_POINTOPOINT;

				if ((dev->flags^nflags)&(IFF_POINTOPOINT|IFF_BROADCAST)) {
					err = -EINVAL;
					break;
				}

				t = FUNC8(dev);
			}
		}

		if (t) {
			err = 0;
			FUNC4(itn, t, dev, p, true, 0);
		} else {
			err = -ENOENT;
		}
		break;

	case SIOCDELTUNNEL:
		err = -EPERM;
		if (!FUNC9(net->user_ns, CAP_NET_ADMIN))
			goto done;

		if (dev == itn->fb_tunnel_dev) {
			err = -ENOENT;
			t = FUNC3(itn, p, itn->fb_tunnel_dev->type);
			if (!t)
				goto done;
			err = -EPERM;
			if (t == FUNC8(itn->fb_tunnel_dev))
				goto done;
			dev = t->dev;
		}
		FUNC10(dev);
		err = 0;
		break;

	default:
		err = -EINVAL;
	}

done:
	return err;
}