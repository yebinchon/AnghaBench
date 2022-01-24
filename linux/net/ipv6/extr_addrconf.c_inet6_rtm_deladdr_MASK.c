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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {int /*<<< orphan*/  ifa_prefixlen; int /*<<< orphan*/  ifa_index; int /*<<< orphan*/  ifa_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFA_ADDRESS ; 
 size_t IFA_FLAGS ; 
 int /*<<< orphan*/  IFA_F_MANAGETEMPADDR ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 struct in6_addr* FUNC0 (struct nlattr*,struct nlattr*,struct in6_addr**) ; 
 int /*<<< orphan*/  ifa_ipv6_policy ; 
 int FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 struct ifaddrmsg* FUNC3 (struct nlmsghdr*) ; 
 int FUNC4 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct sk_buff *skb, struct nlmsghdr *nlh,
		  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC5(skb->sk);
	struct ifaddrmsg *ifm;
	struct nlattr *tb[IFA_MAX+1];
	struct in6_addr *pfx, *peer_pfx;
	u32 ifa_flags;
	int err;

	err = FUNC4(nlh, sizeof(*ifm), tb, IFA_MAX,
				     ifa_ipv6_policy, extack);
	if (err < 0)
		return err;

	ifm = FUNC3(nlh);
	pfx = FUNC0(tb[IFA_ADDRESS], tb[IFA_LOCAL], &peer_pfx);
	if (!pfx)
		return -EINVAL;

	ifa_flags = tb[IFA_FLAGS] ? FUNC2(tb[IFA_FLAGS]) : ifm->ifa_flags;

	/* We ignore other flags so far. */
	ifa_flags &= IFA_F_MANAGETEMPADDR;

	return FUNC1(net, ifm->ifa_index, ifa_flags, pfx,
			      ifm->ifa_prefixlen);
}