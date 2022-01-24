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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 size_t IPSET_ATTR_IPADDR_IPV6 ; 
 int /*<<< orphan*/  IPSET_ATTR_IPADDR_MAX ; 
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**,size_t) ; 
 int /*<<< orphan*/  ipaddr_policy ; 
 int /*<<< orphan*/  FUNC2 (union nf_inet_addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

int
FUNC6(struct nlattr *nla, union nf_inet_addr *ipaddr)
{
	struct nlattr *tb[IPSET_ATTR_IPADDR_MAX + 1];

	if (FUNC5(!FUNC0(nla)))
		return -IPSET_ERR_PROTOCOL;

	if (FUNC4(tb, IPSET_ATTR_IPADDR_MAX, nla,
			     ipaddr_policy, NULL))
		return -IPSET_ERR_PROTOCOL;
	if (FUNC5(!FUNC1(tb, IPSET_ATTR_IPADDR_IPV6)))
		return -IPSET_ERR_PROTOCOL;

	FUNC2(ipaddr, FUNC3(tb[IPSET_ATTR_IPADDR_IPV6]),
	       sizeof(struct in6_addr));
	return 0;
}