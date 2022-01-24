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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ifaddrmsg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 size_t IFA_LOCAL ; 
 int /*<<< orphan*/  IFA_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 struct ifaddrmsg* FUNC3 (struct nlmsghdr*) ; 
 int FUNC4 (struct nlmsghdr*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  qrtr_local_nid ; 
 int /*<<< orphan*/  qrtr_policy ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct nlmsghdr *nlh,
			  struct netlink_ext_ack *extack)
{
	struct nlattr *tb[IFA_MAX + 1];
	struct ifaddrmsg *ifm;
	int rc;

	if (!FUNC1(skb, CAP_NET_ADMIN))
		return -EPERM;

	if (!FUNC1(skb, CAP_SYS_ADMIN))
		return -EPERM;

	FUNC0();

	rc = FUNC4(nlh, sizeof(*ifm), tb, IFA_MAX,
				    qrtr_policy, extack);
	if (rc < 0)
		return rc;

	ifm = FUNC3(nlh);
	if (!tb[IFA_LOCAL])
		return -EINVAL;

	qrtr_local_nid = FUNC2(tb[IFA_LOCAL]);
	return 0;
}