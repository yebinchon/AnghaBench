#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct rt6_info {int /*<<< orphan*/  rt6i_uncached; } ;
struct TYPE_4__ {TYPE_1__* ip6_null_entry; } ;
struct net {TYPE_2__ ipv6; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_3__ {struct dst_entry dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 struct dst_entry* FUNC2 (struct net*,struct sock const*,struct flowi6*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

struct dst_entry *FUNC6(struct net *net,
					 const struct sock *sk,
					 struct flowi6 *fl6,
					 int flags)
{
        struct dst_entry *dst;
        struct rt6_info *rt6;

        FUNC4();
        dst = FUNC2(net, sk, fl6, flags);
        rt6 = (struct rt6_info *)dst;
        /* For dst cached in uncached_list, refcnt is already taken. */
        if (FUNC3(&rt6->rt6i_uncached) && !FUNC1(dst)) {
                dst = &net->ipv6.ip6_null_entry->dst;
                FUNC0(dst);
        }
        FUNC5();

        return dst;
}