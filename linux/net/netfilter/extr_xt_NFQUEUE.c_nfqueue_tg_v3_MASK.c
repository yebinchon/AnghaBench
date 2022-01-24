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
typedef  scalar_t__ u32 ;
struct xt_action_param {struct xt_NFQ_info_v3* targinfo; } ;
struct xt_NFQ_info_v3 {int queues_total; int flags; scalar_t__ queuenum; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int NFQ_FLAG_BYPASS ; 
 int NFQ_FLAG_CPU_FANOUT ; 
 int FUNC0 (scalar_t__) ; 
 int NF_VERDICT_FLAG_QUEUE_BYPASS ; 
 int /*<<< orphan*/  jhash_initval ; 
 scalar_t__ FUNC1 (struct sk_buff*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct xt_action_param const*) ; 

__attribute__((used)) static unsigned int
FUNC4(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct xt_NFQ_info_v3 *info = par->targinfo;
	u32 queue = info->queuenum;
	int ret;

	if (info->queues_total > 1) {
		if (info->flags & NFQ_FLAG_CPU_FANOUT) {
			int cpu = FUNC2();

			queue = info->queuenum + cpu % info->queues_total;
		} else {
			queue = FUNC1(skb, queue, info->queues_total,
					     FUNC3(par), jhash_initval);
		}
	}

	ret = FUNC0(queue);
	if (info->flags & NFQ_FLAG_BYPASS)
		ret |= NF_VERDICT_FLAG_QUEUE_BYPASS;

	return ret;
}