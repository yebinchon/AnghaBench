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
struct hash_ipport4_elem {int /*<<< orphan*/  proto; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSET_ATTR_IP ; 
 int /*<<< orphan*/  IPSET_ATTR_PORT ; 
 int /*<<< orphan*/  IPSET_ATTR_PROTO ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct sk_buff *skb,
		       const struct hash_ipport4_elem *data)
{
	if (FUNC0(skb, IPSET_ATTR_IP, data->ip) ||
	    FUNC1(skb, IPSET_ATTR_PORT, data->port) ||
	    FUNC2(skb, IPSET_ATTR_PROTO, data->proto))
		goto nla_put_failure;
	return false;

nla_put_failure:
	return true;
}