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
struct module {int dummy; } ;
typedef  int /*<<< orphan*/  rtnl_dumpit_func ;
typedef  int /*<<< orphan*/  rtnl_doit_func ;

/* Variables and functions */
 int FUNC0 (struct module*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC1(struct module *owner,
			 int protocol, int msgtype,
			 rtnl_doit_func doit, rtnl_dumpit_func dumpit,
			 unsigned int flags)
{
	return FUNC0(owner, protocol, msgtype,
				      doit, dumpit, flags);
}