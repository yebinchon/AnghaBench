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
struct sk_buff {TYPE_2__* dev; } ;
struct nlmsghdr {int dummy; } ;
struct net {int dummy; } ;
struct nduseroptmsg {int nduseropt_opts_len; int /*<<< orphan*/  nduseropt_icmp_code; int /*<<< orphan*/  nduseropt_icmp_type; int /*<<< orphan*/  nduseropt_ifindex; int /*<<< orphan*/  nduseropt_family; } ;
struct nd_opt_hdr {int nd_opt_len; } ;
struct in6_addr {int dummy; } ;
struct icmp6hdr {int /*<<< orphan*/  icmp6_code; int /*<<< orphan*/  icmp6_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_3__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NDUSEROPT_SRCADDR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RTM_NEWNDUSEROPT ; 
 int /*<<< orphan*/  RTNLGRP_ND_USEROPT ; 
 struct net* FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nduseroptmsg*,struct nd_opt_hdr*,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 struct nduseroptmsg* FUNC6 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC14(struct sk_buff *ra, struct nd_opt_hdr *opt)
{
	struct icmp6hdr *icmp6h = (struct icmp6hdr *)FUNC13(ra);
	struct sk_buff *skb;
	struct nlmsghdr *nlh;
	struct nduseroptmsg *ndmsg;
	struct net *net = FUNC1(ra->dev);
	int err;
	int base_size = FUNC0(sizeof(struct nduseroptmsg)
				    + (opt->nd_opt_len << 3));
	size_t msg_size = base_size + FUNC5(sizeof(struct in6_addr));

	skb = FUNC9(msg_size, GFP_ATOMIC);
	if (!skb) {
		err = -ENOBUFS;
		goto errout;
	}

	nlh = FUNC10(skb, 0, 0, RTM_NEWNDUSEROPT, base_size, 0);
	if (!nlh) {
		goto nla_put_failure;
	}

	ndmsg = FUNC6(nlh);
	ndmsg->nduseropt_family = AF_INET6;
	ndmsg->nduseropt_ifindex = ra->dev->ifindex;
	ndmsg->nduseropt_icmp_type = icmp6h->icmp6_type;
	ndmsg->nduseropt_icmp_code = icmp6h->icmp6_code;
	ndmsg->nduseropt_opts_len = opt->nd_opt_len << 3;

	FUNC3(ndmsg + 1, opt, opt->nd_opt_len << 3);

	if (FUNC4(skb, NDUSEROPT_SRCADDR, &FUNC2(ra)->saddr))
		goto nla_put_failure;
	FUNC7(skb, nlh);

	FUNC11(skb, net, 0, RTNLGRP_ND_USEROPT, NULL, GFP_ATOMIC);
	return;

nla_put_failure:
	FUNC8(skb);
	err = -EMSGSIZE;
errout:
	FUNC12(net, RTNLGRP_ND_USEROPT, err);
}