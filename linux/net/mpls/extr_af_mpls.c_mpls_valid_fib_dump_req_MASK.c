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
struct rtmsg {scalar_t__ rtm_protocol; scalar_t__ rtm_flags; scalar_t__ rtm_type; scalar_t__ rtm_scope; scalar_t__ rtm_table; scalar_t__ rtm_tos; scalar_t__ rtm_src_len; scalar_t__ rtm_dst_len; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  answer_flags; struct netlink_ext_ack* extack; } ;
struct net {int dummy; } ;
struct fib_dump_filter {int filter_set; int /*<<< orphan*/  dev; scalar_t__ protocol; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  NLM_F_DUMP_FILTERED ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int RTA_MAX ; 
 int RTA_OIF ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int) ; 
 int FUNC2 (struct nlattr*) ; 
 struct rtmsg* FUNC3 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rtm_mpls_policy ; 

__attribute__((used)) static int FUNC6(struct net *net, const struct nlmsghdr *nlh,
				   struct fib_dump_filter *filter,
				   struct netlink_callback *cb)
{
	struct netlink_ext_ack *extack = cb->extack;
	struct nlattr *tb[RTA_MAX + 1];
	struct rtmsg *rtm;
	int err, i;

	if (nlh->nlmsg_len < FUNC4(sizeof(*rtm))) {
		FUNC0(extack, "Invalid header for FIB dump request");
		return -EINVAL;
	}

	rtm = FUNC3(nlh);
	if (rtm->rtm_dst_len || rtm->rtm_src_len  || rtm->rtm_tos   ||
	    rtm->rtm_table   || rtm->rtm_scope    || rtm->rtm_type  ||
	    rtm->rtm_flags) {
		FUNC0(extack, "Invalid values in header for FIB dump request");
		return -EINVAL;
	}

	if (rtm->rtm_protocol) {
		filter->protocol = rtm->rtm_protocol;
		filter->filter_set = 1;
		cb->answer_flags = NLM_F_DUMP_FILTERED;
	}

	err = FUNC5(nlh, sizeof(*rtm), tb, RTA_MAX,
					    rtm_mpls_policy, extack);
	if (err < 0)
		return err;

	for (i = 0; i <= RTA_MAX; ++i) {
		int ifindex;

		if (i == RTA_OIF) {
			ifindex = FUNC2(tb[i]);
			filter->dev = FUNC1(net, ifindex);
			if (!filter->dev)
				return -ENODEV;
			filter->filter_set = 1;
		} else if (tb[i]) {
			FUNC0(extack, "Unsupported attribute in dump request");
			return -EINVAL;
		}
	}

	return 0;
}