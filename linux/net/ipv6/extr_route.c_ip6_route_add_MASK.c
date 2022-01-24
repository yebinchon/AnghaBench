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
struct netlink_ext_ack {int dummy; } ;
struct fib6_info {int dummy; } ;
struct fib6_config {int /*<<< orphan*/  fc_nlinfo; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fib6_info*) ; 
 int FUNC1 (struct fib6_info*) ; 
 int FUNC2 (struct fib6_info*,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib6_info*) ; 
 struct fib6_info* FUNC4 (struct fib6_config*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 

int FUNC5(struct fib6_config *cfg, gfp_t gfp_flags,
		  struct netlink_ext_ack *extack)
{
	struct fib6_info *rt;
	int err;

	rt = FUNC4(cfg, gfp_flags, extack);
	if (FUNC0(rt))
		return FUNC1(rt);

	err = FUNC2(rt, &cfg->fc_nlinfo, extack);
	FUNC3(rt);

	return err;
}