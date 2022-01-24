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
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {int nlmsg_flags; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mc_autojoin_sk; } ;
struct net {TYPE_1__ ipv4; } ;
struct in_ifaddr {int ifa_flags; scalar_t__ ifa_rt_priority; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int IFA_F_MCAUTOJOIN ; 
 int /*<<< orphan*/  INFINITY_LIFE_TIME ; 
 scalar_t__ FUNC1 (struct in_ifaddr*) ; 
 TYPE_2__ FUNC2 (struct sk_buff*) ; 
 int NLM_F_EXCL ; 
 int NLM_F_REPLACE ; 
 int FUNC3 (struct in_ifaddr*) ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int FUNC4 (struct in_ifaddr*,struct nlmsghdr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  check_lifetime_work ; 
 int /*<<< orphan*/  FUNC6 (struct in_ifaddr*,scalar_t__) ; 
 struct in_ifaddr* FUNC7 (struct in_ifaddr*) ; 
 int /*<<< orphan*/  FUNC8 (struct in_ifaddr*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,struct in_ifaddr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct in_ifaddr* FUNC11 (struct net*,struct nlmsghdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct in_ifaddr*,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct in_ifaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct nlmsghdr *nlh,
			    struct netlink_ext_ack *extack)
{
	struct net *net = FUNC14(skb->sk);
	struct in_ifaddr *ifa;
	struct in_ifaddr *ifa_existing;
	__u32 valid_lft = INFINITY_LIFE_TIME;
	__u32 prefered_lft = INFINITY_LIFE_TIME;

	FUNC0();

	ifa = FUNC11(net, nlh, &valid_lft, &prefered_lft, extack);
	if (FUNC1(ifa))
		return FUNC3(ifa);

	ifa_existing = FUNC7(ifa);
	if (!ifa_existing) {
		/* It would be best to check for !NLM_F_CREATE here but
		 * userspace already relies on not having to provide this.
		 */
		FUNC13(ifa, valid_lft, prefered_lft);
		if (ifa->ifa_flags & IFA_F_MCAUTOJOIN) {
			int ret = FUNC9(net->ipv4.mc_autojoin_sk,
					       true, ifa);

			if (ret < 0) {
				FUNC8(ifa);
				return ret;
			}
		}
		return FUNC4(ifa, nlh, FUNC2(skb).portid,
					 extack);
	} else {
		u32 new_metric = ifa->ifa_rt_priority;

		FUNC8(ifa);

		if (nlh->nlmsg_flags & NLM_F_EXCL ||
		    !(nlh->nlmsg_flags & NLM_F_REPLACE))
			return -EEXIST;
		ifa = ifa_existing;

		if (ifa->ifa_rt_priority != new_metric) {
			FUNC6(ifa, new_metric);
			ifa->ifa_rt_priority = new_metric;
		}

		FUNC13(ifa, valid_lft, prefered_lft);
		FUNC5(&check_lifetime_work);
		FUNC10(system_power_efficient_wq,
				&check_lifetime_work, 0);
		FUNC12(RTM_NEWADDR, ifa, nlh, FUNC2(skb).portid);
	}
	return 0;
}