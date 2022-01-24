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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct ip_set_net {scalar_t__ ip_set_max; } ;
struct ip_set {int dummy; } ;
typedef  scalar_t__ ip_set_id_t ;

/* Variables and functions */
 int ENOENT ; 
 size_t IPSET_ATTR_SETNAME ; 
 int IPSET_ERR_PROTOCOL ; 
 struct ip_set* FUNC0 (struct ip_set_net*,int /*<<< orphan*/ ) ; 
 struct ip_set* FUNC1 (struct ip_set_net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_set*) ; 
 struct ip_set_net* FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr const* const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net *net, struct sock *ctnl, struct sk_buff *skb,
			const struct nlmsghdr *nlh,
			const struct nlattr * const attr[],
			struct netlink_ext_ack *extack)
{
	struct ip_set_net *inst = FUNC3(net);
	struct ip_set *s;
	ip_set_id_t i;

	if (FUNC6(FUNC5(attr)))
		return -IPSET_ERR_PROTOCOL;

	if (!attr[IPSET_ATTR_SETNAME]) {
		for (i = 0; i < inst->ip_set_max; i++) {
			s = FUNC1(inst, i);
			if (s)
				FUNC2(s);
		}
	} else {
		s = FUNC0(inst, FUNC4(attr[IPSET_ATTR_SETNAME]));
		if (!s)
			return -ENOENT;

		FUNC2(s);
	}

	return 0;
}