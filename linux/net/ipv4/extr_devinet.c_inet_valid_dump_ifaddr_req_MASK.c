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
struct sock {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  answer_flags; struct netlink_ext_ack* extack; } ;
struct net {int dummy; } ;
struct inet_fill_args {int netnsid; int /*<<< orphan*/  flags; int /*<<< orphan*/  ifindex; } ;
struct ifaddrmsg {int /*<<< orphan*/  ifa_index; scalar_t__ ifa_scope; scalar_t__ ifa_flags; scalar_t__ ifa_prefixlen; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFA_MAX ; 
 int IFA_TARGET_NETNSID ; 
 scalar_t__ FUNC0 (struct net*) ; 
 int /*<<< orphan*/  NLM_F_DUMP_FILTERED ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct net*) ; 
 int /*<<< orphan*/  ifa_ipv4_policy ; 
 int FUNC3 (struct nlattr*) ; 
 struct ifaddrmsg* FUNC4 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net* FUNC7 (struct sock*,int) ; 

__attribute__((used)) static int FUNC8(const struct nlmsghdr *nlh,
				      struct inet_fill_args *fillargs,
				      struct net **tgt_net, struct sock *sk,
				      struct netlink_callback *cb)
{
	struct netlink_ext_ack *extack = cb->extack;
	struct nlattr *tb[IFA_MAX+1];
	struct ifaddrmsg *ifm;
	int err, i;

	if (nlh->nlmsg_len < FUNC5(sizeof(*ifm))) {
		FUNC1(extack, "ipv4: Invalid header for address dump request");
		return -EINVAL;
	}

	ifm = FUNC4(nlh);
	if (ifm->ifa_prefixlen || ifm->ifa_flags || ifm->ifa_scope) {
		FUNC1(extack, "ipv4: Invalid values in header for address dump request");
		return -EINVAL;
	}

	fillargs->ifindex = ifm->ifa_index;
	if (fillargs->ifindex) {
		cb->answer_flags |= NLM_F_DUMP_FILTERED;
		fillargs->flags |= NLM_F_DUMP_FILTERED;
	}

	err = FUNC6(nlh, sizeof(*ifm), tb, IFA_MAX,
					    ifa_ipv4_policy, extack);
	if (err < 0)
		return err;

	for (i = 0; i <= IFA_MAX; ++i) {
		if (!tb[i])
			continue;

		if (i == IFA_TARGET_NETNSID) {
			struct net *net;

			fillargs->netnsid = FUNC3(tb[i]);

			net = FUNC7(sk, fillargs->netnsid);
			if (FUNC0(net)) {
				fillargs->netnsid = -1;
				FUNC1(extack, "ipv4: Invalid target network namespace id");
				return FUNC2(net);
			}
			*tgt_net = net;
		} else {
			FUNC1(extack, "ipv4: Unsupported attribute in dump request");
			return -EINVAL;
		}
	}

	return 0;
}