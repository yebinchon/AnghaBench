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
typedef  unsigned long u32 ;
struct tcamsg {scalar_t__ tca__pad2; scalar_t__ tca__pad1; int /*<<< orphan*/  tca_family; } ;
struct tc_action_ops {int (* walk ) (struct net*,struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct tc_action_ops*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  owner; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_len; int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_type; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nla_bitfield32 {unsigned long value; } ;
struct netlink_callback {unsigned long* args; int /*<<< orphan*/  skb; struct nlmsghdr* nlh; int /*<<< orphan*/  extack; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  RTM_GETACTION ; 
 int /*<<< orphan*/  TCA_ACT_TAB ; 
 int /*<<< orphan*/  TCA_ROOT_COUNT ; 
 size_t TCA_ROOT_FLAGS ; 
 int /*<<< orphan*/  TCA_ROOT_MAX ; 
 size_t TCA_ROOT_TIME_DELTA ; 
 struct nlattr* FUNC1 (struct nlattr**) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 struct nla_bitfield32 FUNC6 (struct nlattr*) ; 
 unsigned long FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct tcamsg* FUNC11 (struct nlmsghdr*) ; 
 int FUNC12 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC13 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 unsigned char* FUNC16 (struct sk_buff*) ; 
 struct net* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct net*,struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct tc_action_ops*,int /*<<< orphan*/ *) ; 
 struct tc_action_ops* FUNC19 (struct nlattr*) ; 
 int /*<<< orphan*/  tcaa_policy ; 

__attribute__((used)) static int FUNC20(struct sk_buff *skb, struct netlink_callback *cb)
{
	struct net *net = FUNC17(skb->sk);
	struct nlmsghdr *nlh;
	unsigned char *b = FUNC16(skb);
	struct nlattr *nest;
	struct tc_action_ops *a_o;
	int ret = 0;
	struct tcamsg *t = (struct tcamsg *) FUNC11(cb->nlh);
	struct nlattr *tb[TCA_ROOT_MAX + 1];
	struct nlattr *count_attr = NULL;
	unsigned long jiffy_since = 0;
	struct nlattr *kind = NULL;
	struct nla_bitfield32 bf;
	u32 msecs_since = 0;
	u32 act_count = 0;

	ret = FUNC12(cb->nlh, sizeof(struct tcamsg), tb,
				     TCA_ROOT_MAX, tcaa_policy, cb->extack);
	if (ret < 0)
		return ret;

	kind = FUNC1(tb);
	if (kind == NULL) {
		FUNC15("tc_dump_action: action bad kind\n");
		return 0;
	}

	a_o = FUNC19(kind);
	if (a_o == NULL)
		return 0;

	cb->args[2] = 0;
	if (tb[TCA_ROOT_FLAGS]) {
		bf = FUNC6(tb[TCA_ROOT_FLAGS]);
		cb->args[2] = bf.value;
	}

	if (tb[TCA_ROOT_TIME_DELTA]) {
		msecs_since = FUNC7(tb[TCA_ROOT_TIME_DELTA]);
	}

	nlh = FUNC13(skb, FUNC0(cb->skb).portid, cb->nlh->nlmsg_seq,
			cb->nlh->nlmsg_type, sizeof(*t), 0);
	if (!nlh)
		goto out_module_put;

	if (msecs_since)
		jiffy_since = jiffies - FUNC4(msecs_since);

	t = FUNC11(nlh);
	t->tca_family = AF_UNSPEC;
	t->tca__pad1 = 0;
	t->tca__pad2 = 0;
	cb->args[3] = jiffy_since;
	count_attr = FUNC10(skb, TCA_ROOT_COUNT, sizeof(u32));
	if (!count_attr)
		goto out_module_put;

	nest = FUNC9(skb, TCA_ACT_TAB);
	if (nest == NULL)
		goto out_module_put;

	ret = a_o->walk(net, skb, cb, RTM_GETACTION, a_o, NULL);
	if (ret < 0)
		goto out_module_put;

	if (ret > 0) {
		FUNC8(skb, nest);
		ret = skb->len;
		act_count = cb->args[1];
		FUNC2(FUNC5(count_attr), &act_count, sizeof(u32));
		cb->args[1] = 0;
	} else
		FUNC14(skb, b);

	nlh->nlmsg_len = FUNC16(skb) - b;
	if (FUNC0(cb->skb).portid && ret)
		nlh->nlmsg_flags |= NLM_F_MULTI;
	FUNC3(a_o->owner);
	return skb->len;

out_module_put:
	FUNC3(a_o->owner);
	FUNC14(skb, b);
	return skb->len;
}