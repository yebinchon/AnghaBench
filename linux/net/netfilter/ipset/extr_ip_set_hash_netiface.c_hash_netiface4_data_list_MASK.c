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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct hash_netiface4_elem {int /*<<< orphan*/  iface; int /*<<< orphan*/  cidr; int /*<<< orphan*/  ip; scalar_t__ nomatch; scalar_t__ physdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSET_ATTR_CADT_FLAGS ; 
 int /*<<< orphan*/  IPSET_ATTR_CIDR ; 
 int /*<<< orphan*/  IPSET_ATTR_IFACE ; 
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_FLAG_NOMATCH ; 
 int /*<<< orphan*/  IPSET_FLAG_PHYSDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct sk_buff *skb,
			 const struct hash_netiface4_elem *data)
{
	u32 flags = data->physdev ? IPSET_FLAG_PHYSDEV : 0;

	if (data->nomatch)
		flags |= IPSET_FLAG_NOMATCH;
	if (FUNC1(skb, IPSET_ATTR_IP, data->ip) ||
	    FUNC4(skb, IPSET_ATTR_CIDR, data->cidr) ||
	    FUNC3(skb, IPSET_ATTR_IFACE, data->iface) ||
	    (flags &&
	     FUNC2(skb, IPSET_ATTR_CADT_FLAGS, FUNC0(flags))))
		goto nla_put_failure;
	return false;

nla_put_failure:
	return true;
}