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
struct fib_rule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 

__attribute__((used)) static int FUNC1(struct nlattr *nla, struct fib_rule *nlrule,
			      struct netlink_ext_ack *extack)
{
	FUNC0(extack, "l3mdev support is not enabled in kernel");
	return -1;
}