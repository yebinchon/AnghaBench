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
struct wdrr_bucket {scalar_t__ head; } ;
struct sk_buff {int dummy; } ;
struct hhf_sched_data {struct wdrr_bucket* buckets; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 size_t WDRR_BUCKET_FOR_HH ; 
 size_t WDRR_BUCKET_FOR_NON_HH ; 
 struct sk_buff* FUNC0 (struct wdrr_bucket*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 struct hhf_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC4(struct Qdisc *sch, struct sk_buff **to_free)
{
	struct hhf_sched_data *q = FUNC2(sch);
	struct wdrr_bucket *bucket;

	/* Always try to drop from heavy-hitters first. */
	bucket = &q->buckets[WDRR_BUCKET_FOR_HH];
	if (!bucket->head)
		bucket = &q->buckets[WDRR_BUCKET_FOR_NON_HH];

	if (bucket->head) {
		struct sk_buff *skb = FUNC0(bucket);

		sch->q.qlen--;
		FUNC3(sch, skb);
		FUNC1(skb, sch, to_free);
	}

	/* Return id of the bucket from which the packet was dropped. */
	return bucket - q->buckets;
}