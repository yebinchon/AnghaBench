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
struct netlink_callback {int /*<<< orphan*/  extack; int /*<<< orphan*/  nlh; scalar_t__ strict_check; } ;
struct mr_table {int dummy; } ;
struct fib_dump_filter {scalar_t__ dump_all_families; scalar_t__ table_id; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _ipmr_fill_mroute ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fib_dump_filter*,struct netlink_callback*) ; 
 struct mr_table* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ipmr_mr_table_iter ; 
 int /*<<< orphan*/  mfc_unres_lock ; 
 int FUNC3 (struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fib_dump_filter*) ; 
 int FUNC4 (struct mr_table*,struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fib_dump_filter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct fib_dump_filter filter = {};
	int err;

	if (cb->strict_check) {
		err = FUNC1(FUNC5(skb->sk), cb->nlh,
					    &filter, cb);
		if (err < 0)
			return err;
	}

	if (filter.table_id) {
		struct mr_table *mrt;

		mrt = FUNC2(FUNC5(skb->sk), filter.table_id);
		if (!mrt) {
			if (filter.dump_all_families)
				return skb->len;

			FUNC0(cb->extack, "ipv4: MR table does not exist");
			return -ENOENT;
		}
		err = FUNC4(mrt, skb, cb, _ipmr_fill_mroute,
				    &mfc_unres_lock, &filter);
		return skb->len ? : err;
	}

	return FUNC3(skb, cb, ipmr_mr_table_iter,
				_ipmr_fill_mroute, &mfc_unres_lock, &filter);
}