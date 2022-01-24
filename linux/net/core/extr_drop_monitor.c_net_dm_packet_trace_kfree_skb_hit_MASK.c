#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  tstamp; } ;
struct TYPE_5__ {int /*<<< orphan*/  syncp; int /*<<< orphan*/  dropped; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct per_cpu_dm_data {TYPE_1__ stats; TYPE_2__ drop_queue; int /*<<< orphan*/  dm_alert_work; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_7__ {void* pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  dm_cpu_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ net_dm_queue_len ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct per_cpu_dm_data* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(void *ignore,
					      struct sk_buff *skb,
					      void *location)
{
	ktime_t tstamp = FUNC3();
	struct per_cpu_dm_data *data;
	struct sk_buff *nskb;
	unsigned long flags;

	if (!FUNC6(skb))
		return;

	nskb = FUNC5(skb, GFP_ATOMIC);
	if (!nskb)
		return;

	FUNC0(nskb)->pc = location;
	/* Override the timestamp because we care about the time when the
	 * packet was dropped.
	 */
	nskb->tstamp = tstamp;

	data = FUNC10(&dm_cpu_data);

	FUNC8(&data->drop_queue.lock, flags);
	if (FUNC7(&data->drop_queue) < net_dm_queue_len)
		FUNC1(&data->drop_queue, nskb);
	else
		goto unlock_free;
	FUNC9(&data->drop_queue.lock, flags);

	FUNC4(&data->dm_alert_work);

	return;

unlock_free:
	FUNC9(&data->drop_queue.lock, flags);
	FUNC11(&data->stats.syncp);
	data->stats.dropped++;
	FUNC12(&data->stats.syncp);
	FUNC2(nskb);
}