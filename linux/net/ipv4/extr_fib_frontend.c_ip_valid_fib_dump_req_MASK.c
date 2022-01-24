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
struct rtmsg {int rtm_flags; scalar_t__ rtm_family; void* rtm_table; int /*<<< orphan*/  rtm_type; int /*<<< orphan*/  rtm_protocol; scalar_t__ rtm_scope; scalar_t__ rtm_tos; scalar_t__ rtm_src_len; scalar_t__ rtm_dst_len; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  answer_flags; struct netlink_ext_ack* extack; } ;
struct net {int dummy; } ;
struct fib_dump_filter {int dump_routes; int dump_exceptions; int dump_all_families; int flags; int filter_set; scalar_t__ dev; void* table_id; int /*<<< orphan*/  rt_type; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  NLM_F_DUMP_FILTERED ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int RTA_MAX ; 
#define  RTA_OIF 129 
#define  RTA_TABLE 128 
 int RTM_F_CLONED ; 
 int RTM_F_PREFIX ; 
 scalar_t__ FUNC2 (struct net*,int) ; 
 void* FUNC3 (struct nlattr*) ; 
 struct rtmsg* FUNC4 (struct nlmsghdr const*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct nlmsghdr const*,int,struct nlattr**,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rtm_ipv4_policy ; 

int FUNC7(struct net *net, const struct nlmsghdr *nlh,
			  struct fib_dump_filter *filter,
			  struct netlink_callback *cb)
{
	struct netlink_ext_ack *extack = cb->extack;
	struct nlattr *tb[RTA_MAX + 1];
	struct rtmsg *rtm;
	int err, i;

	FUNC0();

	if (nlh->nlmsg_len < FUNC5(sizeof(*rtm))) {
		FUNC1(extack, "Invalid header for FIB dump request");
		return -EINVAL;
	}

	rtm = FUNC4(nlh);
	if (rtm->rtm_dst_len || rtm->rtm_src_len  || rtm->rtm_tos   ||
	    rtm->rtm_scope) {
		FUNC1(extack, "Invalid values in header for FIB dump request");
		return -EINVAL;
	}

	if (rtm->rtm_flags & ~(RTM_F_CLONED | RTM_F_PREFIX)) {
		FUNC1(extack, "Invalid flags for FIB dump request");
		return -EINVAL;
	}
	if (rtm->rtm_flags & RTM_F_CLONED)
		filter->dump_routes = false;
	else
		filter->dump_exceptions = false;

	filter->dump_all_families = (rtm->rtm_family == AF_UNSPEC);
	filter->flags    = rtm->rtm_flags;
	filter->protocol = rtm->rtm_protocol;
	filter->rt_type  = rtm->rtm_type;
	filter->table_id = rtm->rtm_table;

	err = FUNC6(nlh, sizeof(*rtm), tb, RTA_MAX,
					    rtm_ipv4_policy, extack);
	if (err < 0)
		return err;

	for (i = 0; i <= RTA_MAX; ++i) {
		int ifindex;

		if (!tb[i])
			continue;

		switch (i) {
		case RTA_TABLE:
			filter->table_id = FUNC3(tb[i]);
			break;
		case RTA_OIF:
			ifindex = FUNC3(tb[i]);
			filter->dev = FUNC2(net, ifindex);
			if (!filter->dev)
				return -ENODEV;
			break;
		default:
			FUNC1(extack, "Unsupported attribute in dump request");
			return -EINVAL;
		}
	}

	if (filter->flags || filter->protocol || filter->rt_type ||
	    filter->table_id || filter->dev) {
		filter->filter_set = 1;
		cb->answer_flags = NLM_F_DUMP_FILTERED;
	}

	return 0;
}