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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* skb; } ;
struct net {int dummy; } ;
struct fnhe_hash_bucket {int dummy; } ;
struct fib_nh_common {int nhc_flags; int /*<<< orphan*/  nhc_exceptions; } ;
struct fib_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int RTNH_F_DEAD ; 
 struct fib_nh_common* FUNC0 (struct fib_info*,int) ; 
 int FUNC1 (struct fib_info*) ; 
 int FUNC2 (struct net*,struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct fnhe_hash_bucket*,int,int*,int,unsigned int) ; 
 int FUNC3 (struct net*) ; 
 struct fnhe_hash_bucket* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct net* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct sk_buff *skb, struct netlink_callback *cb,
		       u32 table_id, struct fib_info *fi,
		       int *fa_index, int fa_start, unsigned int flags)
{
	struct net *net = FUNC7(cb->skb->sk);
	int nhsel, genid = FUNC3(net);

	for (nhsel = 0; nhsel < FUNC1(fi); nhsel++) {
		struct fib_nh_common *nhc = FUNC0(fi, nhsel);
		struct fnhe_hash_bucket *bucket;
		int err;

		if (nhc->nhc_flags & RTNH_F_DEAD)
			continue;

		FUNC5();
		bucket = FUNC4(nhc->nhc_exceptions);
		err = 0;
		if (bucket)
			err = FUNC2(net, skb, cb, table_id, bucket,
					       genid, fa_index, fa_start,
					       flags);
		FUNC6();
		if (err)
			return err;
	}

	return 0;
}