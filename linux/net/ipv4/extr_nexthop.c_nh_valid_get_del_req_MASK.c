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
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct nhmsg {scalar_t__ nh_flags; scalar_t__ nh_scope; scalar_t__ resvd; scalar_t__ nh_protocol; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NHA_ID 128 
 int /*<<< orphan*/  NHA_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,struct nlattr*,char*) ; 
 int __NHA_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 struct nhmsg* FUNC3 (struct nlmsghdr*) ; 
 int FUNC4 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  rtm_nh_policy ; 

__attribute__((used)) static int FUNC5(struct nlmsghdr *nlh, u32 *id,
				struct netlink_ext_ack *extack)
{
	struct nhmsg *nhm = FUNC3(nlh);
	struct nlattr *tb[NHA_MAX + 1];
	int err, i;

	err = FUNC4(nlh, sizeof(*nhm), tb, NHA_MAX, rtm_nh_policy,
			  extack);
	if (err < 0)
		return err;

	err = -EINVAL;
	for (i = 0; i < __NHA_MAX; ++i) {
		if (!tb[i])
			continue;

		switch (i) {
		case NHA_ID:
			break;
		default:
			FUNC1(extack, tb[i],
					    "Unexpected attribute in request");
			goto out;
		}
	}
	if (nhm->nh_protocol || nhm->resvd || nhm->nh_scope || nhm->nh_flags) {
		FUNC0(extack, "Invalid values in header");
		goto out;
	}

	if (!tb[NHA_ID]) {
		FUNC0(extack, "Nexthop id is missing");
		goto out;
	}

	*id = FUNC2(tb[NHA_ID]);
	if (!(*id))
		FUNC0(extack, "Invalid nexthop id");
	else
		err = 0;
out:
	return err;
}