#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {scalar_t__ user_ns; } ;
struct fib_rules_ops {int addr_size; int /*<<< orphan*/  rule_size; } ;
struct fib_rule_hdr {int src_len; int dst_len; scalar_t__ action; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct fib_rule {int iifindex; int oifindex; int mark_mask; scalar_t__ action; int suppress_prefixlen; int suppress_ifgroup; int /*<<< orphan*/  dport_range; int /*<<< orphan*/  sport_range; void* ip_proto; TYPE_1__ uid_range; scalar_t__ table; scalar_t__ l3mdev; void* pref; void* target; int /*<<< orphan*/  flags; int /*<<< orphan*/  tun_id; void* mark; int /*<<< orphan*/  oifname; int /*<<< orphan*/  iifname; void* proto; struct net* fr_net; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 size_t FRA_DPORT_RANGE ; 
 size_t FRA_DST ; 
 size_t FRA_FWMARK ; 
 size_t FRA_FWMASK ; 
 size_t FRA_GOTO ; 
 size_t FRA_IIFNAME ; 
 size_t FRA_IP_PROTO ; 
 size_t FRA_L3MDEV ; 
 size_t FRA_OIFNAME ; 
 size_t FRA_PRIORITY ; 
 size_t FRA_PROTOCOL ; 
 size_t FRA_SPORT_RANGE ; 
 size_t FRA_SRC ; 
 size_t FRA_SUPPRESS_IFGROUP ; 
 size_t FRA_SUPPRESS_PREFIXLEN ; 
 size_t FRA_TUN_ID ; 
 size_t FRA_UID_RANGE ; 
 scalar_t__ FR_ACT_GOTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 void* RTPROT_UNSPEC ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 void* FUNC3 (struct fib_rules_ops*) ; 
 TYPE_1__ fib_kuid_range_unset ; 
 scalar_t__ FUNC4 (struct nlattr*,struct fib_rule*,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC5 (struct fib_rule_hdr*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC6 (struct fib_rule*) ; 
 struct fib_rule* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 TYPE_1__ FUNC9 (struct nlattr**) ; 
 int FUNC10 (struct nlattr*,int /*<<< orphan*/ *) ; 
 void* FUNC11 (struct nlattr*) ; 
 void* FUNC12 (struct nlattr*) ; 
 scalar_t__ FUNC13 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 struct fib_rule_hdr* FUNC15 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 struct net* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC20(struct sk_buff *skb, struct nlmsghdr *nlh,
		       struct netlink_ext_ack *extack,
		       struct fib_rules_ops *ops,
		       struct nlattr *tb[],
		       struct fib_rule **rule,
		       bool *user_priority)
{
	struct net *net = FUNC17(skb->sk);
	struct fib_rule_hdr *frh = FUNC15(nlh);
	struct fib_rule *nlrule = NULL;
	int err = -EINVAL;

	if (frh->src_len)
		if (!tb[FRA_SRC] ||
		    frh->src_len > (ops->addr_size * 8) ||
		    FUNC13(tb[FRA_SRC]) != ops->addr_size) {
			FUNC0(extack, "Invalid source address");
			goto errout;
	}

	if (frh->dst_len)
		if (!tb[FRA_DST] ||
		    frh->dst_len > (ops->addr_size * 8) ||
		    FUNC13(tb[FRA_DST]) != ops->addr_size) {
			FUNC0(extack, "Invalid dst address");
			goto errout;
	}

	nlrule = FUNC7(ops->rule_size, GFP_KERNEL);
	if (!nlrule) {
		err = -ENOMEM;
		goto errout;
	}
	FUNC16(&nlrule->refcnt, 1);
	nlrule->fr_net = net;

	if (tb[FRA_PRIORITY]) {
		nlrule->pref = FUNC11(tb[FRA_PRIORITY]);
		*user_priority = true;
	} else {
		nlrule->pref = FUNC3(ops);
	}

	nlrule->proto = tb[FRA_PROTOCOL] ?
		FUNC12(tb[FRA_PROTOCOL]) : RTPROT_UNSPEC;

	if (tb[FRA_IIFNAME]) {
		struct net_device *dev;

		nlrule->iifindex = -1;
		FUNC14(nlrule->iifname, tb[FRA_IIFNAME], IFNAMSIZ);
		dev = FUNC1(net, nlrule->iifname);
		if (dev)
			nlrule->iifindex = dev->ifindex;
	}

	if (tb[FRA_OIFNAME]) {
		struct net_device *dev;

		nlrule->oifindex = -1;
		FUNC14(nlrule->oifname, tb[FRA_OIFNAME], IFNAMSIZ);
		dev = FUNC1(net, nlrule->oifname);
		if (dev)
			nlrule->oifindex = dev->ifindex;
	}

	if (tb[FRA_FWMARK]) {
		nlrule->mark = FUNC11(tb[FRA_FWMARK]);
		if (nlrule->mark)
			/* compatibility: if the mark value is non-zero all bits
			 * are compared unless a mask is explicitly specified.
			 */
			nlrule->mark_mask = 0xFFFFFFFF;
	}

	if (tb[FRA_FWMASK])
		nlrule->mark_mask = FUNC11(tb[FRA_FWMASK]);

	if (tb[FRA_TUN_ID])
		nlrule->tun_id = FUNC8(tb[FRA_TUN_ID]);

	err = -EINVAL;
	if (tb[FRA_L3MDEV] &&
	    FUNC4(tb[FRA_L3MDEV], nlrule, extack) < 0)
		goto errout_free;

	nlrule->action = frh->action;
	nlrule->flags = frh->flags;
	nlrule->table = FUNC5(frh, tb);
	if (tb[FRA_SUPPRESS_PREFIXLEN])
		nlrule->suppress_prefixlen = FUNC11(tb[FRA_SUPPRESS_PREFIXLEN]);
	else
		nlrule->suppress_prefixlen = -1;

	if (tb[FRA_SUPPRESS_IFGROUP])
		nlrule->suppress_ifgroup = FUNC11(tb[FRA_SUPPRESS_IFGROUP]);
	else
		nlrule->suppress_ifgroup = -1;

	if (tb[FRA_GOTO]) {
		if (nlrule->action != FR_ACT_GOTO) {
			FUNC0(extack, "Unexpected goto");
			goto errout_free;
		}

		nlrule->target = FUNC11(tb[FRA_GOTO]);
		/* Backward jumps are prohibited to avoid endless loops */
		if (nlrule->target <= nlrule->pref) {
			FUNC0(extack, "Backward goto not supported");
			goto errout_free;
		}
	} else if (nlrule->action == FR_ACT_GOTO) {
		FUNC0(extack, "Missing goto target for action goto");
		goto errout_free;
	}

	if (nlrule->l3mdev && nlrule->table) {
		FUNC0(extack, "l3mdev and table are mutually exclusive");
		goto errout_free;
	}

	if (tb[FRA_UID_RANGE]) {
		if (FUNC2() != net->user_ns) {
			err = -EPERM;
			FUNC0(extack, "No permission to set uid");
			goto errout_free;
		}

		nlrule->uid_range = FUNC9(tb);

		if (!FUNC19(&nlrule->uid_range) ||
		    !FUNC18(nlrule->uid_range.start, nlrule->uid_range.end)) {
			FUNC0(extack, "Invalid uid range");
			goto errout_free;
		}
	} else {
		nlrule->uid_range = fib_kuid_range_unset;
	}

	if (tb[FRA_IP_PROTO])
		nlrule->ip_proto = FUNC12(tb[FRA_IP_PROTO]);

	if (tb[FRA_SPORT_RANGE]) {
		err = FUNC10(tb[FRA_SPORT_RANGE],
					 &nlrule->sport_range);
		if (err) {
			FUNC0(extack, "Invalid sport range");
			goto errout_free;
		}
	}

	if (tb[FRA_DPORT_RANGE]) {
		err = FUNC10(tb[FRA_DPORT_RANGE],
					 &nlrule->dport_range);
		if (err) {
			FUNC0(extack, "Invalid dport range");
			goto errout_free;
		}
	}

	*rule = nlrule;

	return 0;

errout_free:
	FUNC6(nlrule);
errout:
	return err;
}