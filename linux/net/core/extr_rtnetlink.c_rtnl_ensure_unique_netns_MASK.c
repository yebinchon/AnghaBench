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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t IFLA_NET_NS_FD ; 
 size_t IFLA_NET_NS_PID ; 
 size_t IFLA_TARGET_NETNSID ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 

__attribute__((used)) static int FUNC1(struct nlattr *tb[],
				    struct netlink_ext_ack *extack,
				    bool netns_id_only)
{

	if (netns_id_only) {
		if (!tb[IFLA_NET_NS_PID] && !tb[IFLA_NET_NS_FD])
			return 0;

		FUNC0(extack, "specified netns attribute not supported");
		return -EOPNOTSUPP;
	}

	if (tb[IFLA_TARGET_NETNSID] && (tb[IFLA_NET_NS_PID] || tb[IFLA_NET_NS_FD]))
		goto invalid_attr;

	if (tb[IFLA_NET_NS_PID] && (tb[IFLA_TARGET_NETNSID] || tb[IFLA_NET_NS_FD]))
		goto invalid_attr;

	if (tb[IFLA_NET_NS_FD] && (tb[IFLA_TARGET_NETNSID] || tb[IFLA_NET_NS_PID]))
		goto invalid_attr;

	return 0;

invalid_attr:
	FUNC0(extack, "multiple netns identifying attributes specified");
	return -EINVAL;
}