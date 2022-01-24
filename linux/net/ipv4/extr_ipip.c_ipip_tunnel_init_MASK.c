#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_4__ {TYPE_1__ iph; } ;
struct ip_tunnel {scalar_t__ encap_hlen; scalar_t__ tun_hlen; scalar_t__ hlen; TYPE_2__ parms; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct ip_tunnel* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC2(dev);

	FUNC1(dev->dev_addr, &tunnel->parms.iph.saddr, 4);
	FUNC1(dev->broadcast, &tunnel->parms.iph.daddr, 4);

	tunnel->tun_hlen = 0;
	tunnel->hlen = tunnel->tun_hlen + tunnel->encap_hlen;
	return FUNC0(dev);
}