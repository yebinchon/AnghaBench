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
struct atmsvc_msg {int /*<<< orphan*/  type; int /*<<< orphan*/  reply; int /*<<< orphan*/  qos; } ;
struct atm_vcc {TYPE_2__* dev; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* change_qos ) (struct atm_vcc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  as_error ; 
 int /*<<< orphan*/  as_okay ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_vcc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct atm_vcc *vcc, struct atmsvc_msg *msg)
{
	struct sk_buff *skb;

	if (FUNC5(ATM_VF_RELEASED, &vcc->flags) ||
	    !FUNC5(ATM_VF_READY, &vcc->flags))
		return;
	msg->type = as_error;
	if (!vcc->dev->ops->change_qos)
		msg->reply = -EOPNOTSUPP;
	else {
		/* should lock VCC */
		msg->reply = vcc->dev->ops->change_qos(vcc, &msg->qos,
						       msg->reply);
		if (!msg->reply)
			msg->type = as_okay;
	}
	/*
	 * Should probably just turn around the old skb. But the, the buffer
	 * space accounting needs to follow the change too. Maybe later.
	 */
	while (!(skb = FUNC0(sizeof(struct atmsvc_msg), GFP_KERNEL)))
		FUNC1();
	*(struct atmsvc_msg *)FUNC3(skb, sizeof(struct atmsvc_msg)) = *msg;
	FUNC2(skb);
}