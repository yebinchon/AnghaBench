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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;
struct mfcctl {int mfcc_parent; } ;

/* Variables and functions */
 scalar_t__ RTM_NEWROUTE ; 
 int FUNC0 (struct net*,struct mr_table*,struct mfcctl*,int,int) ; 
 int FUNC1 (struct mr_table*,struct mfcctl*,int) ; 
 int FUNC2 (struct net*,struct nlmsghdr*,struct mfcctl*,int*,struct mr_table**,struct netlink_ext_ack*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct nlmsghdr *nlh,
			  struct netlink_ext_ack *extack)
{
	struct net *net = FUNC3(skb->sk);
	int ret, mrtsock, parent;
	struct mr_table *tbl;
	struct mfcctl mfcc;

	mrtsock = 0;
	tbl = NULL;
	ret = FUNC2(net, nlh, &mfcc, &mrtsock, &tbl, extack);
	if (ret < 0)
		return ret;

	parent = ret ? mfcc.mfcc_parent : -1;
	if (nlh->nlmsg_type == RTM_NEWROUTE)
		return FUNC0(net, tbl, &mfcc, mrtsock, parent);
	else
		return FUNC1(tbl, &mfcc, parent);
}