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
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  family ; 
 struct sk_buff* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  taskstats_seqnum ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct genl_info *info, u8 cmd, struct sk_buff **skbp,
				size_t size)
{
	struct sk_buff *skb;
	void *reply;

	/*
	 * If new attributes are added, please revisit this allocation
	 */
	skb = FUNC0(size, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	if (!info) {
		int seq = FUNC4(taskstats_seqnum) - 1;

		reply = FUNC1(skb, 0, seq, &family, 0, cmd);
	} else
		reply = FUNC2(skb, info, &family, 0, cmd);
	if (reply == NULL) {
		FUNC3(skb);
		return -EINVAL;
	}

	*skbp = skb;
	return 0;
}