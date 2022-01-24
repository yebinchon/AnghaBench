#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sit_net {struct net_device* fb_tunnel_dev; } ;
struct net_device {int flags; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct TYPE_5__ {int version; int ihl; int frag_off; int /*<<< orphan*/  daddr; int /*<<< orphan*/  ttl; int /*<<< orphan*/  protocol; } ;
struct ip_tunnel_prl {TYPE_2__ iph; int /*<<< orphan*/  relay_prefixlen; int /*<<< orphan*/  prefixlen; int /*<<< orphan*/  relay_prefix; int /*<<< orphan*/  prefix; } ;
struct ip_tunnel_parm {TYPE_2__ iph; int /*<<< orphan*/  relay_prefixlen; int /*<<< orphan*/  prefixlen; int /*<<< orphan*/  relay_prefix; int /*<<< orphan*/  prefix; } ;
struct ip_tunnel_6rd {TYPE_2__ iph; int /*<<< orphan*/  relay_prefixlen; int /*<<< orphan*/  prefixlen; int /*<<< orphan*/  relay_prefix; int /*<<< orphan*/  prefix; } ;
struct TYPE_4__ {int /*<<< orphan*/  relay_prefixlen; int /*<<< orphan*/  prefixlen; int /*<<< orphan*/  relay_prefix; int /*<<< orphan*/  prefix; } ;
struct ip_tunnel {int /*<<< orphan*/  dst_cache; struct net_device* dev; struct ip_tunnel_prl parms; int /*<<< orphan*/  fwmark; TYPE_1__ ip6rd; struct net* net; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifru_data; } ;
struct ifreq {TYPE_3__ ifr_ifru; } ;
typedef  int /*<<< orphan*/  prl ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  ip6rd ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EEXIST ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int EPERM ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  IP_DF ; 
#define  SIOCADD6RD 139 
#define  SIOCADDPRL 138 
#define  SIOCADDTUNNEL 137 
#define  SIOCCHG6RD 136 
#define  SIOCCHGPRL 135 
#define  SIOCCHGTUNNEL 134 
#define  SIOCDEL6RD 133 
#define  SIOCDELPRL 132 
#define  SIOCDELTUNNEL 131 
#define  SIOCGET6RD 130 
#define  SIOCGETPRL 129 
#define  SIOCGETTUNNEL 128 
 int /*<<< orphan*/  FUNC0 (struct ip_tunnel_prl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ip_tunnel_prl*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ip_tunnel*,struct ip_tunnel_prl*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct sit_net*) ; 
 int FUNC6 (struct ip_tunnel*,struct ip_tunnel_prl*) ; 
 int FUNC7 (struct ip_tunnel*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC8 (struct net*,struct ip_tunnel_prl*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ip_tunnel*,struct ip_tunnel_prl*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ip_tunnel*,struct ip_tunnel_prl*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ip_tunnel_prl*,struct ip_tunnel_prl*,int) ; 
 struct sit_net* FUNC13 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sit_net_id ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 

__attribute__((used)) static int
FUNC18(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	int err = 0;
	struct ip_tunnel_parm p;
	struct ip_tunnel_prl prl;
	struct ip_tunnel *t = FUNC14(dev);
	struct net *net = t->net;
	struct sit_net *sitn = FUNC13(net, sit_net_id);
#ifdef CONFIG_IPV6_SIT_6RD
	struct ip_tunnel_6rd ip6rd;
#endif

	switch (cmd) {
	case SIOCGETTUNNEL:
#ifdef CONFIG_IPV6_SIT_6RD
	case SIOCGET6RD:
#endif
		if (dev == sitn->fb_tunnel_dev) {
			if (FUNC0(&p, ifr->ifr_ifru.ifru_data, sizeof(p))) {
				err = -EFAULT;
				break;
			}
			t = FUNC8(net, &p, 0);
			if (!t)
				t = FUNC14(dev);
		}

		err = -EFAULT;
		if (cmd == SIOCGETTUNNEL) {
			FUNC12(&p, &t->parms, sizeof(p));
			if (FUNC1(ifr->ifr_ifru.ifru_data, &p,
					 sizeof(p)))
				goto done;
#ifdef CONFIG_IPV6_SIT_6RD
		} else {
			ip6rd.prefix = t->ip6rd.prefix;
			ip6rd.relay_prefix = t->ip6rd.relay_prefix;
			ip6rd.prefixlen = t->ip6rd.prefixlen;
			ip6rd.relay_prefixlen = t->ip6rd.relay_prefixlen;
			if (copy_to_user(ifr->ifr_ifru.ifru_data, &ip6rd,
					 sizeof(ip6rd)))
				goto done;
#endif
		}
		err = 0;
		break;

	case SIOCADDTUNNEL:
	case SIOCCHGTUNNEL:
		err = -EPERM;
		if (!FUNC16(net->user_ns, CAP_NET_ADMIN))
			goto done;

		err = -EFAULT;
		if (FUNC0(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
			goto done;

		err = -EINVAL;
		if (!FUNC11(p.iph.protocol))
			goto done;
		if (p.iph.version != 4 ||
		    p.iph.ihl != 5 || (p.iph.frag_off&FUNC3(~IP_DF)))
			goto done;
		if (p.iph.ttl)
			p.iph.frag_off |= FUNC3(IP_DF);

		t = FUNC8(net, &p, cmd == SIOCADDTUNNEL);

		if (dev != sitn->fb_tunnel_dev && cmd == SIOCCHGTUNNEL) {
			if (t) {
				if (t->dev != dev) {
					err = -EEXIST;
					break;
				}
			} else {
				if (((dev->flags&IFF_POINTOPOINT) && !p.iph.daddr) ||
				    (!(dev->flags&IFF_POINTOPOINT) && p.iph.daddr)) {
					err = -EINVAL;
					break;
				}
				t = FUNC14(dev);
			}

			FUNC9(t, &p, t->fwmark);
		}

		if (t) {
			err = 0;
			if (FUNC1(ifr->ifr_ifru.ifru_data, &t->parms, sizeof(p)))
				err = -EFAULT;
		} else
			err = (cmd == SIOCADDTUNNEL ? -ENOBUFS : -ENOENT);
		break;

	case SIOCDELTUNNEL:
		err = -EPERM;
		if (!FUNC16(net->user_ns, CAP_NET_ADMIN))
			goto done;

		if (dev == sitn->fb_tunnel_dev) {
			err = -EFAULT;
			if (FUNC0(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
				goto done;
			err = -ENOENT;
			t = FUNC8(net, &p, 0);
			if (!t)
				goto done;
			err = -EPERM;
			if (t == FUNC14(sitn->fb_tunnel_dev))
				goto done;
			dev = t->dev;
		}
		FUNC17(dev);
		err = 0;
		break;

	case SIOCGETPRL:
		err = -EINVAL;
		if (dev == sitn->fb_tunnel_dev)
			goto done;
		err = FUNC7(t, ifr->ifr_ifru.ifru_data);
		break;

	case SIOCADDPRL:
	case SIOCDELPRL:
	case SIOCCHGPRL:
		err = -EPERM;
		if (!FUNC16(net->user_ns, CAP_NET_ADMIN))
			goto done;
		err = -EINVAL;
		if (dev == sitn->fb_tunnel_dev)
			goto done;
		err = -EFAULT;
		if (FUNC0(&prl, ifr->ifr_ifru.ifru_data, sizeof(prl)))
			goto done;

		switch (cmd) {
		case SIOCDELPRL:
			err = FUNC6(t, &prl);
			break;
		case SIOCADDPRL:
		case SIOCCHGPRL:
			err = FUNC4(t, &prl, cmd == SIOCCHGPRL);
			break;
		}
		FUNC2(&t->dst_cache);
		FUNC15(dev);
		break;

#ifdef CONFIG_IPV6_SIT_6RD
	case SIOCADD6RD:
	case SIOCCHG6RD:
	case SIOCDEL6RD:
		err = -EPERM;
		if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
			goto done;

		err = -EFAULT;
		if (copy_from_user(&ip6rd, ifr->ifr_ifru.ifru_data,
				   sizeof(ip6rd)))
			goto done;

		if (cmd != SIOCDEL6RD) {
			err = ipip6_tunnel_update_6rd(t, &ip6rd);
			if (err < 0)
				goto done;
		} else
			ipip6_tunnel_clone_6rd(dev, sitn);

		err = 0;
		break;
#endif

	default:
		err = -EINVAL;
	}

done:
	return err;
}