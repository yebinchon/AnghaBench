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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct bitmap_ipmac_elem {scalar_t__ filled; int /*<<< orphan*/  ether; } ;
struct bitmap_ipmac {scalar_t__ first_ip; int /*<<< orphan*/  extensions; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IPSET_ATTR_ETHER ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 scalar_t__ MAC_FILLED ; 
 struct bitmap_ipmac_elem* FUNC0 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4(struct sk_buff *skb, const struct bitmap_ipmac *map,
		     u32 id, size_t dsize)
{
	const struct bitmap_ipmac_elem *elem =
		FUNC0(map->extensions, id, dsize);

	return FUNC3(skb, IPSET_ATTR_IP,
			       FUNC1(map->first_ip + id)) ||
	       (elem->filled == MAC_FILLED &&
		FUNC2(skb, IPSET_ATTR_ETHER, ETH_ALEN, elem->ether));
}