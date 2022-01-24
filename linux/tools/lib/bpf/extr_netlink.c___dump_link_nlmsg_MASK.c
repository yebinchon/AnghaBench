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
struct nlmsghdr {int nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct ifinfomsg {int dummy; } ;
typedef  int (* libbpf_dump_nlmsg_t ) (void*,struct ifinfomsg*,struct nlattr**) ;

/* Variables and functions */
 int /*<<< orphan*/  IFLA_MAX ; 
 int LIBBPF_ERRNO__NLPARSE ; 
 int FUNC0 (int) ; 
 struct ifinfomsg* FUNC1 (struct nlmsghdr*) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct nlmsghdr *nlh,
			     libbpf_dump_nlmsg_t dump_link_nlmsg, void *cookie)
{
	struct nlattr *tb[IFLA_MAX + 1], *attr;
	struct ifinfomsg *ifi = FUNC1(nlh);
	int len;

	len = nlh->nlmsg_len - FUNC2(sizeof(*ifi));
	attr = (struct nlattr *) ((void *) ifi + FUNC0(sizeof(*ifi)));
	if (FUNC3(tb, IFLA_MAX, attr, len, NULL) != 0)
		return -LIBBPF_ERRNO__NLPARSE;

	return dump_link_nlmsg(cookie, ifi, tb);
}