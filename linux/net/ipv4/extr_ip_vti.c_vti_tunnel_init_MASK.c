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
struct net_device {int addr_len; int /*<<< orphan*/  features; int /*<<< orphan*/  flags; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  dev_addr; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_2__ {struct iphdr iph; } ;
struct ip_tunnel {TYPE_1__ parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_NOARP ; 
 int /*<<< orphan*/  NETIF_F_LLTX ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct ip_tunnel* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC2(dev);
	struct iphdr *iph = &tunnel->parms.iph;

	FUNC1(dev->dev_addr, &iph->saddr, 4);
	FUNC1(dev->broadcast, &iph->daddr, 4);

	dev->flags		= IFF_NOARP;
	dev->addr_len		= 4;
	dev->features		|= NETIF_F_LLTX;
	FUNC3(dev);

	return FUNC0(dev);
}