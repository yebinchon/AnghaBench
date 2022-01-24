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
struct taskstats {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  pid ;

/* Variables and functions */
 int TASKSTATS_TYPE_AGGR_PID ; 
 int TASKSTATS_TYPE_AGGR_TGID ; 
 int /*<<< orphan*/  TASKSTATS_TYPE_NULL ; 
 int TASKSTATS_TYPE_PID ; 
 int /*<<< orphan*/  TASKSTATS_TYPE_STATS ; 
 struct taskstats* FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int,int,int /*<<< orphan*/ *) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct taskstats *FUNC6(struct sk_buff *skb, int type, u32 pid)
{
	struct nlattr *na, *ret;
	int aggr;

	aggr = (type == TASKSTATS_TYPE_PID)
			? TASKSTATS_TYPE_AGGR_PID
			: TASKSTATS_TYPE_AGGR_TGID;

	na = FUNC3(skb, aggr);
	if (!na)
		goto err;

	if (FUNC4(skb, type, sizeof(pid), &pid) < 0) {
		FUNC1(skb, na);
		goto err;
	}
	ret = FUNC5(skb, TASKSTATS_TYPE_STATS,
				sizeof(struct taskstats), TASKSTATS_TYPE_NULL);
	if (!ret) {
		FUNC1(skb, na);
		goto err;
	}
	FUNC2(skb, na);

	return FUNC0(ret);
err:
	return NULL;
}