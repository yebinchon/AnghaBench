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
struct flowidn {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ flowidn_mark; scalar_t__ flowidn_oif; } ;
struct dst_entry {int dummy; } ;
struct TYPE_3__ {scalar_t__ daddr; scalar_t__ saddr; scalar_t__ flowidn_mark; scalar_t__ flowidn_oif; } ;
struct dn_route {struct dst_entry dst; TYPE_1__ fld; int /*<<< orphan*/  dn_next; } ;
struct TYPE_4__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int MSG_TRYHARD ; 
 unsigned int FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct dn_route*) ; 
 int FUNC2 (struct dst_entry**,struct flowidn const*,int) ; 
 TYPE_2__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct dn_route* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct dst_entry **pprt, const struct flowidn *flp, int flags)
{
	unsigned int hash = FUNC0(flp->saddr, flp->daddr);
	struct dn_route *rt = NULL;

	if (!(flags & MSG_TRYHARD)) {
		FUNC5();
		for (rt = FUNC4(dn_rt_hash_table[hash].chain); rt;
			rt = FUNC4(rt->dn_next)) {
			if ((flp->daddr == rt->fld.daddr) &&
			    (flp->saddr == rt->fld.saddr) &&
			    (flp->flowidn_mark == rt->fld.flowidn_mark) &&
			    FUNC1(rt) &&
			    (rt->fld.flowidn_oif == flp->flowidn_oif)) {
				FUNC3(&rt->dst, jiffies);
				FUNC6();
				*pprt = &rt->dst;
				return 0;
			}
		}
		FUNC6();
	}

	return FUNC2(pprt, flp, flags);
}