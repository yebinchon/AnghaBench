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
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct neighbour {int /*<<< orphan*/  dev; int /*<<< orphan*/  next; } ;
struct neigh_table {int /*<<< orphan*/  nht; } ;
struct neigh_hash_table {int hash_shift; int /*<<< orphan*/ * hash_buckets; } ;
struct neigh_dump_filter {int /*<<< orphan*/  master_idx; int /*<<< orphan*/  dev_idx; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int NLM_F_DUMP_FILTERED ; 
 unsigned int NLM_F_MULTI ; 
 int /*<<< orphan*/  RTM_NEWNEIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct neighbour*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct neigh_table *tbl, struct sk_buff *skb,
			    struct netlink_callback *cb,
			    struct neigh_dump_filter *filter)
{
	struct net *net = FUNC9(skb->sk);
	struct neighbour *n;
	int rc, h, s_h = cb->args[1];
	int idx, s_idx = idx = cb->args[2];
	struct neigh_hash_table *nht;
	unsigned int flags = NLM_F_MULTI;

	if (filter->dev_idx || filter->master_idx)
		flags |= NLM_F_DUMP_FILTERED;

	FUNC7();
	nht = FUNC6(tbl->nht);

	for (h = s_h; h < (1 << nht->hash_shift); h++) {
		if (h > s_h)
			s_idx = 0;
		for (n = FUNC6(nht->hash_buckets[h]), idx = 0;
		     n != NULL;
		     n = FUNC6(n->next)) {
			if (idx < s_idx || !FUNC5(FUNC1(n->dev), net))
				goto next;
			if (FUNC3(n->dev, filter->dev_idx) ||
			    FUNC4(n->dev, filter->master_idx))
				goto next;
			if (FUNC2(skb, n, FUNC0(cb->skb).portid,
					    cb->nlh->nlmsg_seq,
					    RTM_NEWNEIGH,
					    flags) < 0) {
				rc = -1;
				goto out;
			}
next:
			idx++;
		}
	}
	rc = skb->len;
out:
	FUNC8();
	cb->args[1] = h;
	cb->args[2] = idx;
	return rc;
}