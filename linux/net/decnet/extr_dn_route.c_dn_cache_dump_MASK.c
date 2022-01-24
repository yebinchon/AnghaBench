#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct rtmsg {int rtm_flags; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct dn_route {int /*<<< orphan*/  dst; int /*<<< orphan*/  dn_next; } ;
struct TYPE_7__ {int /*<<< orphan*/  portid; } ;
struct TYPE_6__ {int /*<<< orphan*/  chain; } ;
struct TYPE_5__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_4__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int RTM_F_CLONED ; 
 int /*<<< orphan*/  RTM_NEWROUTE ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int dn_rt_hash_mask ; 
 TYPE_3__* dn_rt_hash_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ *) ; 
 struct rtmsg* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 struct dn_route* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC11(skb->sk);
	struct dn_route *rt;
	int h, s_h;
	int idx, s_idx;
	struct rtmsg *rtm;

	if (!FUNC3(net, &init_net))
		return 0;

	if (FUNC5(cb->nlh) < sizeof(struct rtmsg))
		return -EINVAL;

	rtm = FUNC4(cb->nlh);
	if (!(rtm->rtm_flags & RTM_F_CLONED))
		return 0;

	s_h = cb->args[0];
	s_idx = idx = cb->args[1];
	for(h = 0; h <= dn_rt_hash_mask; h++) {
		if (h < s_h)
			continue;
		if (h > s_h)
			s_idx = 0;
		FUNC7();
		for(rt = FUNC6(dn_rt_hash_table[h].chain), idx = 0;
			rt;
			rt = FUNC6(rt->dn_next), idx++) {
			if (idx < s_idx)
				continue;
			FUNC10(skb, FUNC2(&rt->dst));
			if (FUNC1(skb, FUNC0(cb->skb).portid,
					cb->nlh->nlmsg_seq, RTM_NEWROUTE,
					1, NLM_F_MULTI) < 0) {
				FUNC9(skb);
				FUNC8();
				goto done;
			}
			FUNC9(skb);
		}
		FUNC8();
	}

done:
	cb->args[0] = h;
	cb->args[1] = idx;
	return skb->len;
}