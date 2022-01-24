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
struct net_device {scalar_t__ type; int mtu; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  frag_off; int /*<<< orphan*/  tos; int /*<<< orphan*/  ttl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel_parm {scalar_t__ link; TYPE_2__ iph; int /*<<< orphan*/  o_key; int /*<<< orphan*/  i_key; } ;
struct ip_tunnel_net {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  frag_off; int /*<<< orphan*/  tos; int /*<<< orphan*/  ttl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {scalar_t__ link; TYPE_1__ iph; int /*<<< orphan*/  o_key; int /*<<< orphan*/  i_key; } ;
struct ip_tunnel {scalar_t__ fwmark; int /*<<< orphan*/  dst_cache; TYPE_3__ parms; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_tunnel_net*,struct ip_tunnel*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_tunnel_net*,struct ip_tunnel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct ip_tunnel_net *itn,
			     struct ip_tunnel *t,
			     struct net_device *dev,
			     struct ip_tunnel_parm *p,
			     bool set_mtu,
			     __u32 fwmark)
{
	FUNC3(itn, t);
	t->parms.iph.saddr = p->iph.saddr;
	t->parms.iph.daddr = p->iph.daddr;
	t->parms.i_key = p->i_key;
	t->parms.o_key = p->o_key;
	if (dev->type != ARPHRD_ETHER) {
		FUNC4(dev->dev_addr, &p->iph.saddr, 4);
		FUNC4(dev->broadcast, &p->iph.daddr, 4);
	}
	FUNC1(itn, t);

	t->parms.iph.ttl = p->iph.ttl;
	t->parms.iph.tos = p->iph.tos;
	t->parms.iph.frag_off = p->iph.frag_off;

	if (t->parms.link != p->link || t->fwmark != fwmark) {
		int mtu;

		t->parms.link = p->link;
		t->fwmark = fwmark;
		mtu = FUNC2(dev);
		if (set_mtu)
			dev->mtu = mtu;
	}
	FUNC0(&t->dst_cache);
	FUNC5(dev);
}