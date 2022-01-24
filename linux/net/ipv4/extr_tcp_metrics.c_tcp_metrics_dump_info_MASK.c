#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcp_metrics_block {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  TCP_METRICS_CMD_GET ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct tcp_metrics_block*) ; 
 int /*<<< orphan*/  tcp_metrics_nl_family ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
				 struct netlink_callback *cb,
				 struct tcp_metrics_block *tm)
{
	void *hdr;

	hdr = FUNC3(skb, FUNC0(cb->skb).portid, cb->nlh->nlmsg_seq,
			  &tcp_metrics_nl_family, NLM_F_MULTI,
			  TCP_METRICS_CMD_GET);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC4(skb, tm) < 0)
		goto nla_put_failure;

	FUNC2(skb, hdr);
	return 0;

nla_put_failure:
	FUNC1(skb, hdr);
	return -EMSGSIZE;
}