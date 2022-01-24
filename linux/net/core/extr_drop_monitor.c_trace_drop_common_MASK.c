#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct per_cpu_dm_data {int /*<<< orphan*/  lock; TYPE_2__ send_timer; struct sk_buff* skb; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int /*<<< orphan*/  nla_len; } ;
struct net_dm_drop_point {int dummy; } ;
struct net_dm_alert_msg {int entries; TYPE_1__* points; } ;
struct TYPE_4__ {int count; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  dm_cpu_data ; 
 int dm_delay ; 
 int dm_hit_limit ; 
 struct nlattr* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void**,int) ; 
 struct net_dm_alert_msg* FUNC7 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct per_cpu_dm_data* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC13(struct sk_buff *skb, void *location)
{
	struct net_dm_alert_msg *msg;
	struct nlmsghdr *nlh;
	struct nlattr *nla;
	int i;
	struct sk_buff *dskb;
	struct per_cpu_dm_data *data;
	unsigned long flags;

	FUNC4(flags);
	data = FUNC11(&dm_cpu_data);
	FUNC9(&data->lock);
	dskb = data->skb;

	if (!dskb)
		goto out;

	nlh = (struct nlmsghdr *)dskb->data;
	nla = FUNC3(FUNC8(nlh));
	msg = FUNC7(nla);
	for (i = 0; i < msg->entries; i++) {
		if (!FUNC5(&location, msg->points[i].pc, sizeof(void *))) {
			msg->points[i].count++;
			goto out;
		}
	}
	if (msg->entries == dm_hit_limit)
		goto out;
	/*
	 * We need to create a new entry
	 */
	FUNC1(dskb, sizeof(struct net_dm_drop_point));
	nla->nla_len += FUNC0(sizeof(struct net_dm_drop_point));
	FUNC6(msg->points[msg->entries].pc, &location, sizeof(void *));
	msg->points[msg->entries].count = 1;
	msg->entries++;

	if (!FUNC12(&data->send_timer)) {
		data->send_timer.expires = jiffies + dm_delay * HZ;
		FUNC2(&data->send_timer);
	}

out:
	FUNC10(&data->lock, flags);
}