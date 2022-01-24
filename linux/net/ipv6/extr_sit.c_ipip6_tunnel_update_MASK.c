#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sit_net {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  frag_off; int /*<<< orphan*/  tos; int /*<<< orphan*/  ttl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel_parm {scalar_t__ link; TYPE_2__ iph; } ;
struct TYPE_6__ {int /*<<< orphan*/  frag_off; int /*<<< orphan*/  tos; int /*<<< orphan*/  ttl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_8__ {scalar_t__ link; TYPE_1__ iph; } ;
struct ip_tunnel {scalar_t__ fwmark; TYPE_4__* dev; int /*<<< orphan*/  dst_cache; TYPE_3__ parms; struct net* net; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_9__ {int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sit_net*,struct ip_tunnel*) ; 
 int /*<<< orphan*/  FUNC3 (struct sit_net*,struct ip_tunnel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct sit_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  sit_net_id ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct ip_tunnel *t, struct ip_tunnel_parm *p,
				__u32 fwmark)
{
	struct net *net = t->net;
	struct sit_net *sitn = FUNC5(net, sit_net_id);

	FUNC3(sitn, t);
	FUNC7();
	t->parms.iph.saddr = p->iph.saddr;
	t->parms.iph.daddr = p->iph.daddr;
	FUNC4(t->dev->dev_addr, &p->iph.saddr, 4);
	FUNC4(t->dev->broadcast, &p->iph.daddr, 4);
	FUNC2(sitn, t);
	t->parms.iph.ttl = p->iph.ttl;
	t->parms.iph.tos = p->iph.tos;
	t->parms.iph.frag_off = p->iph.frag_off;
	if (t->parms.link != p->link || t->fwmark != fwmark) {
		t->parms.link = p->link;
		t->fwmark = fwmark;
		FUNC1(t->dev);
	}
	FUNC0(&t->dst_cache);
	FUNC6(t->dev);
}