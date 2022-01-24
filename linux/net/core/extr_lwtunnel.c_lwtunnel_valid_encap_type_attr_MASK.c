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
typedef  int /*<<< orphan*/  u16 ;
struct rtnexthop {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RTA_ENCAP_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct nlattr* FUNC1 (struct nlattr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int FUNC3 (struct rtnexthop*) ; 
 struct nlattr* FUNC4 (struct rtnexthop*) ; 
 struct rtnexthop* FUNC5 (struct rtnexthop*,int*) ; 
 scalar_t__ FUNC6 (struct rtnexthop*,int) ; 

int FUNC7(struct nlattr *attr, int remaining,
				   struct netlink_ext_ack *extack)
{
	struct rtnexthop *rtnh = (struct rtnexthop *)attr;
	struct nlattr *nla_entype;
	struct nlattr *attrs;
	u16 encap_type;
	int attrlen;

	while (FUNC6(rtnh, remaining)) {
		attrlen = FUNC3(rtnh);
		if (attrlen > 0) {
			attrs = FUNC4(rtnh);
			nla_entype = FUNC1(attrs, attrlen, RTA_ENCAP_TYPE);

			if (nla_entype) {
				encap_type = FUNC2(nla_entype);

				if (FUNC0(encap_type,
							      extack) != 0)
					return -EOPNOTSUPP;
			}
		}
		rtnh = FUNC5(rtnh, &remaining);
	}

	return 0;
}