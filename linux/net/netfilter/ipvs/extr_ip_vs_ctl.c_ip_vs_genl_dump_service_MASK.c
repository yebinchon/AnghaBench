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
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int /*<<< orphan*/  skb; } ;
struct ip_vs_service {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  portid; } ;
struct TYPE_3__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPVS_CMD_NEW_SERVICE ; 
 TYPE_2__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_vs_genl_family ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct ip_vs_service*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
				   struct ip_vs_service *svc,
				   struct netlink_callback *cb)
{
	void *hdr;

	hdr = FUNC3(skb, FUNC0(cb->skb).portid, cb->nlh->nlmsg_seq,
			  &ip_vs_genl_family, NLM_F_MULTI,
			  IPVS_CMD_NEW_SERVICE);
	if (!hdr)
		return -EMSGSIZE;

	if (FUNC4(skb, svc) < 0)
		goto nla_put_failure;

	FUNC2(skb, hdr);
	return 0;

nla_put_failure:
	FUNC1(skb, hdr);
	return -EMSGSIZE;
}