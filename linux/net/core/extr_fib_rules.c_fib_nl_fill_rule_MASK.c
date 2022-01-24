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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct fib_rules_ops {scalar_t__ (* fill ) (struct fib_rule*,struct sk_buff*,struct fib_rule_hdr*) ;int /*<<< orphan*/  family; } ;
struct fib_rule_hdr {int table; scalar_t__ action; int /*<<< orphan*/  flags; scalar_t__ res2; scalar_t__ res1; int /*<<< orphan*/  family; } ;
struct fib_rule {int table; int suppress_prefixlen; scalar_t__ action; int iifindex; int oifindex; int pref; int mark; int mark_mask; int target; int suppress_ifgroup; scalar_t__ ip_proto; int /*<<< orphan*/  dport_range; int /*<<< orphan*/  sport_range; int /*<<< orphan*/  uid_range; scalar_t__ l3mdev; scalar_t__ tun_id; scalar_t__* oifname; scalar_t__* iifname; int /*<<< orphan*/  ctarget; scalar_t__ proto; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FIB_RULE_IIF_DETACHED ; 
 int /*<<< orphan*/  FIB_RULE_OIF_DETACHED ; 
 int /*<<< orphan*/  FIB_RULE_UNRESOLVED ; 
 int /*<<< orphan*/  FRA_DPORT_RANGE ; 
 int /*<<< orphan*/  FRA_FWMARK ; 
 int /*<<< orphan*/  FRA_FWMASK ; 
 int /*<<< orphan*/  FRA_GOTO ; 
 int /*<<< orphan*/  FRA_IIFNAME ; 
 int /*<<< orphan*/  FRA_IP_PROTO ; 
 int /*<<< orphan*/  FRA_L3MDEV ; 
 int /*<<< orphan*/  FRA_OIFNAME ; 
 int /*<<< orphan*/  FRA_PAD ; 
 int /*<<< orphan*/  FRA_PRIORITY ; 
 int /*<<< orphan*/  FRA_PROTOCOL ; 
 int /*<<< orphan*/  FRA_SPORT_RANGE ; 
 int /*<<< orphan*/  FRA_SUPPRESS_IFGROUP ; 
 int /*<<< orphan*/  FRA_SUPPRESS_PREFIXLEN ; 
 int /*<<< orphan*/  FRA_TABLE ; 
 int /*<<< orphan*/  FRA_TUN_ID ; 
 scalar_t__ FR_ACT_GOTO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 struct fib_rule_hdr* FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct fib_rule*,struct sk_buff*,struct fib_rule_hdr*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct fib_rule *rule,
			    u32 pid, u32 seq, int type, int flags,
			    struct fib_rules_ops *ops)
{
	struct nlmsghdr *nlh;
	struct fib_rule_hdr *frh;

	nlh = FUNC10(skb, pid, seq, type, sizeof(*frh), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	frh = FUNC8(nlh);
	frh->family = ops->family;
	frh->table = rule->table;
	if (FUNC4(skb, FRA_TABLE, rule->table))
		goto nla_put_failure;
	if (FUNC4(skb, FRA_SUPPRESS_PREFIXLEN, rule->suppress_prefixlen))
		goto nla_put_failure;
	frh->res1 = 0;
	frh->res2 = 0;
	frh->action = rule->action;
	frh->flags = rule->flags;

	if (FUNC5(skb, FRA_PROTOCOL, rule->proto))
		goto nla_put_failure;

	if (rule->action == FR_ACT_GOTO &&
	    FUNC11(rule->ctarget) == NULL)
		frh->flags |= FIB_RULE_UNRESOLVED;

	if (rule->iifname[0]) {
		if (FUNC3(skb, FRA_IIFNAME, rule->iifname))
			goto nla_put_failure;
		if (rule->iifindex == -1)
			frh->flags |= FIB_RULE_IIF_DETACHED;
	}

	if (rule->oifname[0]) {
		if (FUNC3(skb, FRA_OIFNAME, rule->oifname))
			goto nla_put_failure;
		if (rule->oifindex == -1)
			frh->flags |= FIB_RULE_OIF_DETACHED;
	}

	if ((rule->pref &&
	     FUNC4(skb, FRA_PRIORITY, rule->pref)) ||
	    (rule->mark &&
	     FUNC4(skb, FRA_FWMARK, rule->mark)) ||
	    ((rule->mark_mask || rule->mark) &&
	     FUNC4(skb, FRA_FWMASK, rule->mark_mask)) ||
	    (rule->target &&
	     FUNC4(skb, FRA_GOTO, rule->target)) ||
	    (rule->tun_id &&
	     FUNC1(skb, FRA_TUN_ID, rule->tun_id, FRA_PAD)) ||
	    (rule->l3mdev &&
	     FUNC5(skb, FRA_L3MDEV, rule->l3mdev)) ||
	    (FUNC13(&rule->uid_range) &&
	     FUNC6(skb, &rule->uid_range)) ||
	    (FUNC0(&rule->sport_range) &&
	     FUNC2(skb, FRA_SPORT_RANGE, &rule->sport_range)) ||
	    (FUNC0(&rule->dport_range) &&
	     FUNC2(skb, FRA_DPORT_RANGE, &rule->dport_range)) ||
	    (rule->ip_proto && FUNC5(skb, FRA_IP_PROTO, rule->ip_proto)))
		goto nla_put_failure;

	if (rule->suppress_ifgroup != -1) {
		if (FUNC4(skb, FRA_SUPPRESS_IFGROUP, rule->suppress_ifgroup))
			goto nla_put_failure;
	}

	if (ops->fill(rule, skb, frh) < 0)
		goto nla_put_failure;

	FUNC9(skb, nlh);
	return 0;

nla_put_failure:
	FUNC7(skb, nlh);
	return -EMSGSIZE;
}