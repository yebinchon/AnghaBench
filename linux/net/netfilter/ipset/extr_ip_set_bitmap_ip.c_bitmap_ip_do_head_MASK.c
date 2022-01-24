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
struct sk_buff {int dummy; } ;
struct bitmap_ip {int netmask; int /*<<< orphan*/  last_ip; int /*<<< orphan*/  first_ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_ATTR_IP_TO ; 
 int /*<<< orphan*/  IPSET_ATTR_NETMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int
FUNC3(struct sk_buff *skb, const struct bitmap_ip *map)
{
	return FUNC1(skb, IPSET_ATTR_IP, FUNC0(map->first_ip)) ||
	       FUNC1(skb, IPSET_ATTR_IP_TO, FUNC0(map->last_ip)) ||
	       (map->netmask != 32 &&
		FUNC2(skb, IPSET_ATTR_NETMASK, map->netmask));
}