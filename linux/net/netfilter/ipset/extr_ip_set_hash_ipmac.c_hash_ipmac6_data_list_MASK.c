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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  in6; } ;
struct hash_ipmac6_elem {int /*<<< orphan*/  ether; TYPE_1__ ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IPSET_ATTR_ETHER ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(struct sk_buff *skb, const struct hash_ipmac6_elem *e)
{
	if (FUNC1(skb, IPSET_ATTR_IP, &e->ip.in6) ||
	    FUNC0(skb, IPSET_ATTR_ETHER, ETH_ALEN, e->ether))
		goto nla_put_failure;
	return false;

nla_put_failure:
	return true;
}