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
struct list_head {int dummy; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; } ;
struct ip_tunnel {int /*<<< orphan*/  ip_tnl_net_id; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_tunnel_net*,struct ip_tunnel*) ; 
 struct ip_tunnel_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct list_head*) ; 

void FUNC4(struct net_device *dev, struct list_head *head)
{
	struct ip_tunnel *tunnel = FUNC2(dev);
	struct ip_tunnel_net *itn;

	itn = FUNC1(tunnel->net, tunnel->ip_tnl_net_id);

	if (itn->fb_tunnel_dev != dev) {
		FUNC0(itn, FUNC2(dev));
		FUNC3(dev, head);
	}
}