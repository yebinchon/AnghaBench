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
struct rtnexthop {scalar_t__ rtnh_ifindex; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct fib6_config {int fc_mp_len; int /*<<< orphan*/  fc_flags; int /*<<< orphan*/  fc_gateway; scalar_t__ fc_ifindex; scalar_t__ fc_mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTA_GATEWAY ; 
 int /*<<< orphan*/  RTF_GATEWAY ; 
 int FUNC0 (struct fib6_config*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct fib6_config*,struct fib6_config*,int) ; 
 struct nlattr* FUNC2 (struct nlattr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nlattr*,int) ; 
 int FUNC4 (struct rtnexthop*) ; 
 struct nlattr* FUNC5 (struct rtnexthop*) ; 
 struct rtnexthop* FUNC6 (struct rtnexthop*,int*) ; 
 scalar_t__ FUNC7 (struct rtnexthop*,int) ; 

__attribute__((used)) static int FUNC8(struct fib6_config *cfg,
				   struct netlink_ext_ack *extack)
{
	struct fib6_config r_cfg;
	struct rtnexthop *rtnh;
	int remaining;
	int attrlen;
	int err = 1, last_err = 0;

	remaining = cfg->fc_mp_len;
	rtnh = (struct rtnexthop *)cfg->fc_mp;

	/* Parse a Multipath Entry */
	while (FUNC7(rtnh, remaining)) {
		FUNC1(&r_cfg, cfg, sizeof(*cfg));
		if (rtnh->rtnh_ifindex)
			r_cfg.fc_ifindex = rtnh->rtnh_ifindex;

		attrlen = FUNC4(rtnh);
		if (attrlen > 0) {
			struct nlattr *nla, *attrs = FUNC5(rtnh);

			nla = FUNC2(attrs, attrlen, RTA_GATEWAY);
			if (nla) {
				FUNC3(&r_cfg.fc_gateway, nla, 16);
				r_cfg.fc_flags |= RTF_GATEWAY;
			}
		}
		err = FUNC0(&r_cfg, extack);
		if (err)
			last_err = err;

		rtnh = FUNC6(rtnh, &remaining);
	}

	return last_err;
}