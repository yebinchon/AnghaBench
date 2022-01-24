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
struct sk_buff {scalar_t__ mark; } ;
struct dst_entry {int dummy; } ;
struct dn_skb_cb {scalar_t__ src; scalar_t__ dst; scalar_t__ iif; } ;
struct TYPE_3__ {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ flowidn_oif; scalar_t__ flowidn_mark; scalar_t__ flowidn_iif; } ;
struct dn_route {int /*<<< orphan*/  dst; TYPE_1__ fld; int /*<<< orphan*/  dn_next; } ;
struct TYPE_4__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (struct sk_buff*) ; 
 TYPE_2__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct dn_route* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct dst_entry*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb)
{
	struct dn_route *rt;
	struct dn_skb_cb *cb = FUNC0(skb);
	unsigned int hash = FUNC1(cb->src, cb->dst);

	if (FUNC7(skb))
		return 0;

	FUNC5();
	for(rt = FUNC4(dn_rt_hash_table[hash].chain); rt != NULL;
	    rt = FUNC4(rt->dn_next)) {
		if ((rt->fld.saddr == cb->src) &&
		    (rt->fld.daddr == cb->dst) &&
		    (rt->fld.flowidn_oif == 0) &&
		    (rt->fld.flowidn_mark == skb->mark) &&
		    (rt->fld.flowidn_iif == cb->iif)) {
			FUNC3(&rt->dst, jiffies);
			FUNC6();
			FUNC8(skb, (struct dst_entry *)rt);
			return 0;
		}
	}
	FUNC6();

	return FUNC2(skb);
}