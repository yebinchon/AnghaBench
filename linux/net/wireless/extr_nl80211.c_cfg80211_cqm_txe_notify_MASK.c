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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_ATTR_CQM_TXE_INTVL ; 
 int /*<<< orphan*/  NL80211_ATTR_CQM_TXE_PKTS ; 
 int /*<<< orphan*/  NL80211_ATTR_CQM_TXE_RATE ; 
 struct sk_buff* FUNC0 (struct net_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

void FUNC4(struct net_device *dev,
			     const u8 *peer, u32 num_packets,
			     u32 rate, u32 intvl, gfp_t gfp)
{
	struct sk_buff *msg;

	msg = FUNC0(dev, peer, gfp);
	if (!msg)
		return;

	if (FUNC2(msg, NL80211_ATTR_CQM_TXE_PKTS, num_packets))
		goto nla_put_failure;

	if (FUNC2(msg, NL80211_ATTR_CQM_TXE_RATE, rate))
		goto nla_put_failure;

	if (FUNC2(msg, NL80211_ATTR_CQM_TXE_INTVL, intvl))
		goto nla_put_failure;

	FUNC1(msg, gfp);
	return;

 nla_put_failure:
	FUNC3(msg);
}