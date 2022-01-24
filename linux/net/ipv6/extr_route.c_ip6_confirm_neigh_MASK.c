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
struct rt6_info {int dummy; } ;
struct net_device {int flags; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int IFF_NOARP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,void const*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  in6addr_any ; 
 scalar_t__ FUNC2 (struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt6_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const struct dst_entry *dst, const void *daddr)
{
	struct net_device *dev = dst->dev;
	struct rt6_info *rt = (struct rt6_info *)dst;

	daddr = FUNC1(FUNC3(rt, &in6addr_any), NULL, daddr);
	if (!daddr)
		return;
	if (dev->flags & (IFF_NOARP | IFF_LOOPBACK))
		return;
	if (FUNC2((const struct in6_addr *)daddr))
		return;
	FUNC0(dev, daddr);
}