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
struct net_device {int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  hw_features; int /*<<< orphan*/  features; } ;
struct TYPE_3__ {int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {TYPE_1__ iph; } ;
struct ip_tunnel {int tun_hlen; int /*<<< orphan*/  erspan_ver; scalar_t__ encap_hlen; scalar_t__ hlen; TYPE_2__ parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRE_FEATURES ; 
 int /*<<< orphan*/  IFF_LIVE_ADDR_CHANGE ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*) ; 
 struct ip_tunnel* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC2(dev);

	tunnel->tun_hlen = 8;
	tunnel->parms.iph.protocol = IPPROTO_GRE;
	tunnel->hlen = tunnel->tun_hlen + tunnel->encap_hlen +
		       FUNC0(tunnel->erspan_ver);

	dev->features		|= GRE_FEATURES;
	dev->hw_features	|= GRE_FEATURES;
	dev->priv_flags		|= IFF_LIVE_ADDR_CHANGE;
	FUNC3(dev);

	return FUNC1(dev);
}