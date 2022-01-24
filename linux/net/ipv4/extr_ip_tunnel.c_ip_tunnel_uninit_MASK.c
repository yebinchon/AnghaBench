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
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {int /*<<< orphan*/  dst_cache; int /*<<< orphan*/  ip_tnl_net_id; struct net* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_tunnel_net*,struct ip_tunnel*) ; 
 struct ip_tunnel_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev)
{
	struct ip_tunnel *tunnel = FUNC3(dev);
	struct net *net = tunnel->net;
	struct ip_tunnel_net *itn;

	itn = FUNC2(net, tunnel->ip_tnl_net_id);
	/* fb_tunnel_dev will be unregisted in net-exit call. */
	if (itn->fb_tunnel_dev != dev)
		FUNC1(itn, FUNC3(dev));

	FUNC0(&tunnel->dst_cache);
}