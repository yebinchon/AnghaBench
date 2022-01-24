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
struct net_device {int /*<<< orphan*/  name; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct ip6_tnl {int hlen; TYPE_1__ parms; int /*<<< orphan*/  net; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct ip6_tnl* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ip6_tnl *tunnel = FUNC2(dev);

	tunnel->dev = dev;
	tunnel->net = FUNC1(dev);
	FUNC3(tunnel->parms.name, dev->name);

	tunnel->hlen		= sizeof(struct ipv6hdr) + 4;

	FUNC0(dev);
}