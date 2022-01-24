#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct cake_tin_data {int tin_rate_ns; int tin_rate_shft; void* time_next_packet; } ;
struct cake_sched_data {int rate_ns; int rate_shft; void* time_next_packet; void* failsafe_next_packet; } ;
typedef  void* ktime_t ;
struct TYPE_2__ {int adjusted_len; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 void* FUNC1 (void*,int) ; 
 scalar_t__ FUNC2 (void*,void*) ; 

__attribute__((used)) static int FUNC3(struct cake_sched_data *q,
			       struct cake_tin_data *b,
			       struct sk_buff *skb,
			       ktime_t now, bool drop)
{
	u32 len = FUNC0(skb)->adjusted_len;

	/* charge packet bandwidth to this tin
	 * and to the global shaper.
	 */
	if (q->rate_ns) {
		u64 tin_dur = (len * b->tin_rate_ns) >> b->tin_rate_shft;
		u64 global_dur = (len * q->rate_ns) >> q->rate_shft;
		u64 failsafe_dur = global_dur + (global_dur >> 1);

		if (FUNC2(b->time_next_packet, now))
			b->time_next_packet = FUNC1(b->time_next_packet,
							   tin_dur);

		else if (FUNC2(b->time_next_packet,
				      FUNC1(now, tin_dur)))
			b->time_next_packet = FUNC1(now, tin_dur);

		q->time_next_packet = FUNC1(q->time_next_packet,
						   global_dur);
		if (!drop)
			q->failsafe_next_packet = \
				FUNC1(q->failsafe_next_packet,
					     failsafe_dur);
	}
	return len;
}