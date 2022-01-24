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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 size_t IPSET_ATTR_IPADDR_IPV4 ; 
 int /*<<< orphan*/  IPSET_ATTR_IPADDR_MAX ; 
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**,size_t) ; 
 int /*<<< orphan*/  ipaddr_policy ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int
FUNC5(struct nlattr *nla,  __be32 *ipaddr)
{
	struct nlattr *tb[IPSET_ATTR_IPADDR_MAX + 1];

	if (FUNC4(!FUNC0(nla)))
		return -IPSET_ERR_PROTOCOL;
	if (FUNC3(tb, IPSET_ATTR_IPADDR_MAX, nla,
			     ipaddr_policy, NULL))
		return -IPSET_ERR_PROTOCOL;
	if (FUNC4(!FUNC1(tb, IPSET_ATTR_IPADDR_IPV4)))
		return -IPSET_ERR_PROTOCOL;

	*ipaddr = FUNC2(tb[IPSET_ATTR_IPADDR_IPV4]);
	return 0;
}