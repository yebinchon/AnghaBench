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
typedef  int /*<<< orphan*/  ts_pktinfo ;
struct sk_buff {scalar_t__ len; } ;
struct scm_ts_pktinfo {scalar_t__ pkt_length; int /*<<< orphan*/  if_index; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCM_TIMESTAMPING_PKTINFO ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scm_ts_pktinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct scm_ts_pktinfo*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct msghdr *msg, struct sk_buff *skb)
{
	struct scm_ts_pktinfo ts_pktinfo;
	struct net_device *orig_dev;

	if (!FUNC5(skb))
		return;

	FUNC1(&ts_pktinfo, 0, sizeof(ts_pktinfo));

	FUNC3();
	orig_dev = FUNC0(FUNC7(skb));
	if (orig_dev)
		ts_pktinfo.if_index = orig_dev->ifindex;
	FUNC4();

	ts_pktinfo.pkt_length = skb->len - FUNC6(skb);
	FUNC2(msg, SOL_SOCKET, SCM_TIMESTAMPING_PKTINFO,
		 sizeof(ts_pktinfo), &ts_pktinfo);
}