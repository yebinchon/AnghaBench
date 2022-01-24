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
typedef  scalar_t__ uint64_t ;
struct __sk_buff {scalar_t__ tstamp; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  BPF_EXIST ; 
 scalar_t__ ECN_HORIZON_NS ; 
 scalar_t__ NS_PER_SEC ; 
 int TC_ACT_OK ; 
 int TC_ACT_SHOT ; 
 scalar_t__ THROTTLE_RATE_BPS ; 
 scalar_t__ TIME_HORIZON_NS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct __sk_buff*) ; 
 int /*<<< orphan*/  flow_map ; 

__attribute__((used)) static inline int FUNC4(struct __sk_buff *skb)
{
	int key = 0;
	uint64_t *last_tstamp = FUNC1(&flow_map, &key);
	uint64_t delay_ns = ((uint64_t)skb->len) * NS_PER_SEC /
			THROTTLE_RATE_BPS;
	uint64_t now = FUNC0();
	uint64_t tstamp, next_tstamp = 0;

	if (last_tstamp)
		next_tstamp = *last_tstamp + delay_ns;

	tstamp = skb->tstamp;
	if (tstamp < now)
		tstamp = now;

	/* should we throttle? */
	if (next_tstamp <= tstamp) {
		if (FUNC2(&flow_map, &key, &tstamp, BPF_ANY))
			return TC_ACT_SHOT;
		return TC_ACT_OK;
	}

	/* do not queue past the time horizon */
	if (next_tstamp - now >= TIME_HORIZON_NS)
		return TC_ACT_SHOT;

	/* set ecn bit, if needed */
	if (next_tstamp - now >= ECN_HORIZON_NS)
		FUNC3(skb);

	if (FUNC2(&flow_map, &key, &next_tstamp, BPF_EXIST))
		return TC_ACT_SHOT;
	skb->tstamp = next_tstamp;

	return TC_ACT_OK;
}