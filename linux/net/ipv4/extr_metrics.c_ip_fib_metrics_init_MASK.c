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
struct net {int dummy; } ;
struct dst_metrics {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  metrics; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dst_metrics* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dst_default_metrics ; 
 int FUNC1 (struct net*,struct nlattr*,int,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_metrics*) ; 
 struct dst_metrics* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int) ; 

struct dst_metrics *FUNC6(struct net *net, struct nlattr *fc_mx,
					int fc_mx_len,
					struct netlink_ext_ack *extack)
{
	struct dst_metrics *fib_metrics;
	int err;

	if (!fc_mx)
		return (struct dst_metrics *)&dst_default_metrics;

	fib_metrics = FUNC3(sizeof(*fib_metrics), GFP_KERNEL);
	if (FUNC5(!fib_metrics))
		return FUNC0(-ENOMEM);

	err = FUNC1(net, fc_mx, fc_mx_len, fib_metrics->metrics,
				 extack);
	if (!err) {
		FUNC4(&fib_metrics->refcnt, 1);
	} else {
		FUNC2(fib_metrics);
		fib_metrics = FUNC0(err);
	}

	return fib_metrics;
}