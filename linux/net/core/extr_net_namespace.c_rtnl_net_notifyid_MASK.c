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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct net_fill_args {int cmd; int nsid; int /*<<< orphan*/  seq; int /*<<< orphan*/  portid; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RTNLGRP_NSID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct net_fill_args*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct net *net, int cmd, int id, u32 portid,
			      struct nlmsghdr *nlh, gfp_t gfp)
{
	struct net_fill_args fillargs = {
		.portid = portid,
		.seq = nlh ? nlh->nlmsg_seq : 0,
		.cmd = cmd,
		.nsid = id,
	};
	struct sk_buff *msg;
	int err = -ENOMEM;

	msg = FUNC1(FUNC3(), gfp);
	if (!msg)
		goto out;

	err = FUNC2(msg, &fillargs);
	if (err < 0)
		goto err_out;

	FUNC4(msg, net, portid, RTNLGRP_NSID, nlh, gfp);
	return;

err_out:
	FUNC0(msg);
out:
	FUNC5(net, RTNLGRP_NSID, err);
}