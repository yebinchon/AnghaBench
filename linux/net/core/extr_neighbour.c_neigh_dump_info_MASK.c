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
struct sk_buff {int len; } ;
struct rtgenmsg {int rtgen_family; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_callback {int* args; scalar_t__ strict_check; int /*<<< orphan*/  extack; struct nlmsghdr* nlh; } ;
struct neigh_table {int family; } ;
struct neigh_dump_filter {int dummy; } ;
struct ndmsg {scalar_t__ ndm_flags; } ;

/* Variables and functions */
 int NEIGH_NR_TABLES ; 
 scalar_t__ NTF_PROXY ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct neigh_table*,struct sk_buff*,struct netlink_callback*,struct neigh_dump_filter*) ; 
 struct neigh_table** neigh_tables ; 
 int FUNC2 (struct nlmsghdr const*,scalar_t__,struct neigh_dump_filter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nlmsghdr const*) ; 
 int FUNC4 (struct nlmsghdr const*) ; 
 int FUNC5 (struct neigh_table*,struct sk_buff*,struct netlink_callback*,struct neigh_dump_filter*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct nlmsghdr *nlh = cb->nlh;
	struct neigh_dump_filter filter = {};
	struct neigh_table *tbl;
	int t, family, s_t;
	int proxy = 0;
	int err;

	family = ((struct rtgenmsg *)FUNC3(nlh))->rtgen_family;

	/* check for full ndmsg structure presence, family member is
	 * the same for both structures
	 */
	if (FUNC4(nlh) >= sizeof(struct ndmsg) &&
	    ((struct ndmsg *)FUNC3(nlh))->ndm_flags == NTF_PROXY)
		proxy = 1;

	err = FUNC2(nlh, cb->strict_check, &filter, cb->extack);
	if (err < 0 && cb->strict_check)
		return err;

	s_t = cb->args[0];

	for (t = 0; t < NEIGH_NR_TABLES; t++) {
		tbl = neigh_tables[t];

		if (!tbl)
			continue;
		if (t < s_t || (family && tbl->family != family))
			continue;
		if (t > s_t)
			FUNC0(&cb->args[1], 0, sizeof(cb->args) -
						sizeof(cb->args[0]));
		if (proxy)
			err = FUNC5(tbl, skb, cb, &filter);
		else
			err = FUNC1(tbl, skb, cb, &filter);
		if (err < 0)
			break;
	}

	cb->args[0] = t;
	return skb->len;
}