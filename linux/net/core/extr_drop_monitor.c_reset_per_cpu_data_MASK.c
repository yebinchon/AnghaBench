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
struct sk_buff {scalar_t__ data; } ;
struct per_cpu_dm_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  skb; int /*<<< orphan*/  send_timer; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_dm_drop_point {int dummy; } ;
struct net_dm_alert_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  NET_DM_CMD_ALERT ; 
 int /*<<< orphan*/  NLA_UNSPEC ; 
 int dm_hit_limit ; 
 int /*<<< orphan*/  FUNC0 (struct genlmsghdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct net_dm_alert_msg*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  net_drop_monitor_family ; 
 struct net_dm_alert_msg* FUNC6 (struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct per_cpu_dm_data *data)
{
	size_t al;
	struct net_dm_alert_msg *msg;
	struct nlattr *nla;
	struct sk_buff *skb;
	unsigned long flags;
	void *msg_header;

	al = sizeof(struct net_dm_alert_msg);
	al += dm_hit_limit * sizeof(struct net_dm_drop_point);
	al += sizeof(struct nlattr);

	skb = FUNC2(al, GFP_KERNEL);

	if (!skb)
		goto err;

	msg_header = FUNC3(skb, 0, 0, &net_drop_monitor_family,
				 0, NET_DM_CMD_ALERT);
	if (!msg_header) {
		FUNC9(skb);
		skb = NULL;
		goto err;
	}
	nla = FUNC7(skb, NLA_UNSPEC,
			  sizeof(struct net_dm_alert_msg));
	if (!nla) {
		FUNC9(skb);
		skb = NULL;
		goto err;
	}
	msg = FUNC6(nla);
	FUNC4(msg, 0, al);
	goto out;

err:
	FUNC5(&data->send_timer, jiffies + HZ / 10);
out:
	FUNC10(&data->lock, flags);
	FUNC12(data->skb, skb);
	FUNC11(&data->lock, flags);

	if (skb) {
		struct nlmsghdr *nlh = (struct nlmsghdr *)skb->data;
		struct genlmsghdr *gnlh = (struct genlmsghdr *)FUNC8(nlh);

		FUNC1(skb, FUNC0(gnlh));
	}

	return skb;
}