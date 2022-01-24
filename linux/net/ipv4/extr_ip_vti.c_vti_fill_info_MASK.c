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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; int /*<<< orphan*/  o_key; int /*<<< orphan*/  i_key; int /*<<< orphan*/  link; } ;
struct ip_tunnel {int /*<<< orphan*/  fwmark; struct ip_tunnel_parm parms; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_VTI_FWMARK ; 
 int /*<<< orphan*/  IFLA_VTI_IKEY ; 
 int /*<<< orphan*/  IFLA_VTI_LINK ; 
 int /*<<< orphan*/  IFLA_VTI_LOCAL ; 
 int /*<<< orphan*/  IFLA_VTI_OKEY ; 
 int /*<<< orphan*/  IFLA_VTI_REMOTE ; 
 struct ip_tunnel* FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, const struct net_device *dev)
{
	struct ip_tunnel *t = FUNC0(dev);
	struct ip_tunnel_parm *p = &t->parms;

	if (FUNC3(skb, IFLA_VTI_LINK, p->link) ||
	    FUNC1(skb, IFLA_VTI_IKEY, p->i_key) ||
	    FUNC1(skb, IFLA_VTI_OKEY, p->o_key) ||
	    FUNC2(skb, IFLA_VTI_LOCAL, p->iph.saddr) ||
	    FUNC2(skb, IFLA_VTI_REMOTE, p->iph.daddr) ||
	    FUNC3(skb, IFLA_VTI_FWMARK, t->fwmark))
		return -EMSGSIZE;

	return 0;
}