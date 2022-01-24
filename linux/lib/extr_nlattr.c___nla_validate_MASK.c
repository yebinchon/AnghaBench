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
struct nla_policy {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nlattr const*,int,int,struct nla_policy const*,unsigned int,struct netlink_ext_ack*,int /*<<< orphan*/ *) ; 

int FUNC1(const struct nlattr *head, int len, int maxtype,
		   const struct nla_policy *policy, unsigned int validate,
		   struct netlink_ext_ack *extack)
{
	return FUNC0(head, len, maxtype, policy, validate,
				    extack, NULL);
}