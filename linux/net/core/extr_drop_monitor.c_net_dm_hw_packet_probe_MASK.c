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
struct net_dm_hw_metadata {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_7__ {struct net_dm_hw_metadata* hw_metadata; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  dm_hw_cpu_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct net_dm_hw_metadata* FUNC4 (struct net_dm_hw_metadata const*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_dm_hw_metadata*) ; 
 scalar_t__ net_dm_queue_len ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct per_cpu_dm_data* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct sk_buff *skb,
		       const struct net_dm_hw_metadata *hw_metadata)
{
	struct net_dm_hw_metadata *n_hw_metadata;
	ktime_t tstamp = FUNC3();
	struct per_cpu_dm_data *hw_data;
	struct sk_buff *nskb;
	unsigned long flags;

	if (!FUNC8(skb))
		return;

	nskb = FUNC7(skb, GFP_ATOMIC);
	if (!nskb)
		return;

	n_hw_metadata = FUNC4(hw_metadata);
	if (!n_hw_metadata)
		goto free;

	FUNC0(nskb)->hw_metadata = n_hw_metadata;
	nskb->tstamp = tstamp;

	hw_data = FUNC12(&dm_hw_cpu_data);

	FUNC10(&hw_data->drop_queue.lock, flags);
	if (FUNC9(&hw_data->drop_queue) < net_dm_queue_len)
		FUNC1(&hw_data->drop_queue, nskb);
	else
		goto unlock_free;
	FUNC11(&hw_data->drop_queue.lock, flags);

	FUNC6(&hw_data->dm_alert_work);

	return;

unlock_free:
	FUNC11(&hw_data->drop_queue.lock, flags);
	FUNC13(&hw_data->stats.syncp);
	hw_data->stats.dropped++;
	FUNC14(&hw_data->stats.syncp);
	FUNC5(n_hw_metadata);
free:
	FUNC2(nskb);
}