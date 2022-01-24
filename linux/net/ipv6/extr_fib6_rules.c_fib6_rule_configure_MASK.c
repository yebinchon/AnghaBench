#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_6__ {int fib6_has_custom_rules; int /*<<< orphan*/  fib6_rules_require_fldissect; } ;
struct net {TYPE_3__ ipv6; } ;
struct fib_rule_hdr {int /*<<< orphan*/  tos; scalar_t__ dst_len; scalar_t__ src_len; } ;
struct fib_rule {scalar_t__ action; int /*<<< orphan*/  table; int /*<<< orphan*/  l3mdev; } ;
struct TYPE_5__ {scalar_t__ plen; void* addr; } ;
struct TYPE_4__ {scalar_t__ plen; void* addr; } ;
struct fib6_rule {int /*<<< orphan*/  tclass; TYPE_2__ dst; TYPE_1__ src; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 size_t FRA_DST ; 
 size_t FRA_SRC ; 
 scalar_t__ FR_ACT_TO_TBL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  RT6_TABLE_UNSPEC ; 
 int /*<<< orphan*/ * FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fib_rule*) ; 
 void* FUNC3 (struct nlattr*) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fib_rule *rule, struct sk_buff *skb,
			       struct fib_rule_hdr *frh,
			       struct nlattr **tb,
			       struct netlink_ext_ack *extack)
{
	int err = -EINVAL;
	struct net *net = FUNC4(skb->sk);
	struct fib6_rule *rule6 = (struct fib6_rule *) rule;

	if (rule->action == FR_ACT_TO_TBL && !rule->l3mdev) {
		if (rule->table == RT6_TABLE_UNSPEC) {
			FUNC0(extack, "Invalid table");
			goto errout;
		}

		if (FUNC1(net, rule->table) == NULL) {
			err = -ENOBUFS;
			goto errout;
		}
	}

	if (frh->src_len)
		rule6->src.addr = FUNC3(tb[FRA_SRC]);

	if (frh->dst_len)
		rule6->dst.addr = FUNC3(tb[FRA_DST]);

	rule6->src.plen = frh->src_len;
	rule6->dst.plen = frh->dst_len;
	rule6->tclass = frh->tos;

	if (FUNC2(rule))
		net->ipv6.fib6_rules_require_fldissect++;

	net->ipv6.fib6_has_custom_rules = true;
	err = 0;
errout:
	return err;
}