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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq; } ;
struct TYPE_5__ {TYPE_1__ ip6addrlbl_table; } ;
struct net {TYPE_2__ ipv6; } ;
struct ip6addrlbl_entry {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrlblmsg {scalar_t__ ifal_family; int ifal_prefixlen; scalar_t__ ifal_index; } ;
struct TYPE_6__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IFAL_ADDRESS ; 
 int /*<<< orphan*/  IFAL_MAX ; 
 TYPE_3__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  RTM_NEWADDRLABEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ip6addrlbl_entry* FUNC2 (struct net*,struct in6_addr*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,scalar_t__) ; 
 int FUNC4 (struct sk_buff*,struct ip6addrlbl_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct sk_buff*,struct nlmsghdr*,struct nlattr**,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC7 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct in6_addr* FUNC9 (struct nlattr*) ; 
 struct ifaddrlblmsg* FUNC10 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct sk_buff*,struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *in_skb, struct nlmsghdr *nlh,
			  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC15(in_skb->sk);
	struct ifaddrlblmsg *ifal;
	struct nlattr *tb[IFAL_MAX+1];
	struct in6_addr *addr;
	u32 lseq;
	int err = 0;
	struct ip6addrlbl_entry *p;
	struct sk_buff *skb;

	err = FUNC6(in_skb, nlh, tb, extack);
	if (err < 0)
		return err;

	ifal = FUNC10(nlh);

	if (ifal->ifal_family != AF_INET6 ||
	    ifal->ifal_prefixlen != 128)
		return -EINVAL;

	if (ifal->ifal_index &&
	    !FUNC3(net, ifal->ifal_index))
		return -EINVAL;

	if (!tb[IFAL_ADDRESS])
		return -EINVAL;
	addr = FUNC9(tb[IFAL_ADDRESS]);

	skb = FUNC11(FUNC5(), GFP_KERNEL);
	if (!skb)
		return -ENOBUFS;

	err = -ESRCH;

	FUNC12();
	p = FUNC2(net, addr, FUNC7(addr), ifal->ifal_index);
	lseq = net->ipv6.ip6addrlbl_table.seq;
	if (p)
		err = FUNC4(skb, p, lseq,
				      FUNC0(in_skb).portid,
				      nlh->nlmsg_seq,
				      RTM_NEWADDRLABEL, 0);
	FUNC13();

	if (err < 0) {
		FUNC1(err == -EMSGSIZE);
		FUNC8(skb);
	} else {
		err = FUNC14(skb, net, FUNC0(in_skb).portid);
	}
	return err;
}