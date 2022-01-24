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
struct sw_flow {int /*<<< orphan*/  id; int /*<<< orphan*/  sf_acts; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct genl_info*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sw_flow const*,int,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC5(const struct sw_flow *flow,
					       int dp_ifindex,
					       struct genl_info *info, u8 cmd,
					       bool always, u32 ufid_flags)
{
	struct sk_buff *skb;
	int retval;

	skb = FUNC2(FUNC4(flow->sf_acts),
				      &flow->id, info, always, ufid_flags);
	if (FUNC1(skb))
		return skb;

	retval = FUNC3(flow, dp_ifindex, skb,
					info->snd_portid, info->snd_seq, 0,
					cmd, ufid_flags);
	FUNC0(retval < 0);
	return skb;
}