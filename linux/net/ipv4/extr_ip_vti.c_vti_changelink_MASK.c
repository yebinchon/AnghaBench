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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel {int /*<<< orphan*/  fwmark; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int FUNC0 (struct net_device*,struct nlattr**,struct ip_tunnel_parm*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr**,struct ip_tunnel_parm*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct nlattr *tb[],
			  struct nlattr *data[],
			  struct netlink_ext_ack *extack)
{
	struct ip_tunnel *t = FUNC1(dev);
	__u32 fwmark = t->fwmark;
	struct ip_tunnel_parm p;

	FUNC2(data, &p, &fwmark);
	return FUNC0(dev, tb, &p, fwmark);
}