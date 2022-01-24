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
typedef  int /*<<< orphan*/  u8 ;
struct xfrm_state_walk {int dummy; } ;
struct xfrm_dump_info {int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_seq; struct sk_buff* out_skb; int /*<<< orphan*/  in_skb; } ;
struct xfrm_address_filter {int dummy; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; int /*<<< orphan*/  extack; TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 size_t XFRMA_ADDRESS_FILTER ; 
 int /*<<< orphan*/  XFRMA_MAX ; 
 size_t XFRMA_PROTO ; 
 int /*<<< orphan*/  dump_one_state ; 
 struct xfrm_address_filter* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,struct xfrm_state_walk*,int /*<<< orphan*/ ,struct xfrm_dump_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state_walk*,int /*<<< orphan*/ ,struct xfrm_address_filter*) ; 
 int /*<<< orphan*/  xfrma_policy ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC5(skb->sk);
	struct xfrm_state_walk *walk = (struct xfrm_state_walk *) &cb->args[1];
	struct xfrm_dump_info info;

	FUNC0(sizeof(struct xfrm_state_walk) >
		     sizeof(cb->args) - sizeof(cb->args[0]));

	info.in_skb = cb->skb;
	info.out_skb = skb;
	info.nlmsg_seq = cb->nlh->nlmsg_seq;
	info.nlmsg_flags = NLM_F_MULTI;

	if (!cb->args[0]) {
		struct nlattr *attrs[XFRMA_MAX+1];
		struct xfrm_address_filter *filter = NULL;
		u8 proto = 0;
		int err;

		err = FUNC4(cb->nlh, 0, attrs, XFRMA_MAX,
					     xfrma_policy, cb->extack);
		if (err < 0)
			return err;

		if (attrs[XFRMA_ADDRESS_FILTER]) {
			filter = FUNC1(FUNC2(attrs[XFRMA_ADDRESS_FILTER]),
					 sizeof(*filter), GFP_KERNEL);
			if (filter == NULL)
				return -ENOMEM;
		}

		if (attrs[XFRMA_PROTO])
			proto = FUNC3(attrs[XFRMA_PROTO]);

		FUNC7(walk, proto, filter);
		cb->args[0] = 1;
	}

	(void) FUNC6(net, walk, dump_one_state, &info);

	return skb->len;
}