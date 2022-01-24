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
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  extack; scalar_t__ strict_check; struct nlmsghdr* nlh; } ;
struct mr_table {int dummy; } ;
struct fib_dump_filter {scalar_t__ dump_all_families; scalar_t__ table_id; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _ip6mr_fill_mroute ; 
 struct mr_table* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ip6mr_mr_table_iter ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nlmsghdr const*,struct fib_dump_filter*,struct netlink_callback*) ; 
 int /*<<< orphan*/  mfc_unres_lock ; 
 int FUNC3 (struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fib_dump_filter*) ; 
 int FUNC4 (struct mr_table*,struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fib_dump_filter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct netlink_callback *cb)
{
	const struct nlmsghdr *nlh = cb->nlh;
	struct fib_dump_filter filter = {};
	int err;

	if (cb->strict_check) {
		err = FUNC2(FUNC5(skb->sk), nlh,
					    &filter, cb);
		if (err < 0)
			return err;
	}

	if (filter.table_id) {
		struct mr_table *mrt;

		mrt = FUNC1(FUNC5(skb->sk), filter.table_id);
		if (!mrt) {
			if (filter.dump_all_families)
				return skb->len;

			FUNC0(cb->extack, "MR table does not exist");
			return -ENOENT;
		}
		err = FUNC4(mrt, skb, cb, _ip6mr_fill_mroute,
				    &mfc_unres_lock, &filter);
		return skb->len ? : err;
	}

	return FUNC3(skb, cb, ip6mr_mr_table_iter,
				_ip6mr_fill_mroute, &mfc_unres_lock, &filter);
}