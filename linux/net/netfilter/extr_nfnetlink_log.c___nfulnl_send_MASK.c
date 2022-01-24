#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nlmsghdr {int dummy; } ;
struct nfulnl_instance {int qlen; TYPE_1__* skb; int /*<<< orphan*/  peer_portid; int /*<<< orphan*/  net; } ;
struct nfgenmsg {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  NLMSG_DONE ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(struct nfulnl_instance *inst)
{
	if (inst->qlen > 1) {
		struct nlmsghdr *nlh = FUNC3(inst->skb, 0, 0,
						 NLMSG_DONE,
						 sizeof(struct nfgenmsg),
						 0);
		if (FUNC0(!nlh, "bad nlskb size: %u, tailroom %d\n",
			      inst->skb->len, FUNC4(inst->skb))) {
			FUNC1(inst->skb);
			goto out;
		}
	}
	FUNC2(inst->skb, inst->net, inst->peer_portid,
			  MSG_DONTWAIT);
out:
	inst->qlen = 0;
	inst->skb = NULL;
}