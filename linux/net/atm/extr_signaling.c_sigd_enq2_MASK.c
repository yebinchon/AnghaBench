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
struct sockaddr_atmsvc {int dummy; } ;
struct sockaddr_atmpvc {int dummy; } ;
struct sk_buff {int dummy; } ;
struct atm_qos {int dummy; } ;
struct atmsvc_msg {int type; int reply; unsigned int session; struct sockaddr_atmpvc pvc; int /*<<< orphan*/  local; struct sockaddr_atmsvc svc; int /*<<< orphan*/  sap; struct atm_qos qos; int /*<<< orphan*/  listen_vcc; int /*<<< orphan*/  vcc; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  local; int /*<<< orphan*/  sap; } ;
typedef  enum atmsvc_msg_type { ____Placeholder_atmsvc_msg_type } atmsvc_msg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_REGIS ; 
 int /*<<< orphan*/  ATM_VF_SESSION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int as_connect ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct atmsvc_msg* FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct atm_vcc *vcc, enum atmsvc_msg_type type,
	       struct atm_vcc *listen_vcc, const struct sockaddr_atmpvc *pvc,
	       const struct sockaddr_atmsvc *svc, const struct atm_qos *qos,
	       int reply)
{
	struct sk_buff *skb;
	struct atmsvc_msg *msg;
	static unsigned int session = 0;

	FUNC1("%d (0x%p)\n", (int)type, vcc);
	while (!(skb = FUNC0(sizeof(struct atmsvc_msg), GFP_KERNEL)))
		FUNC2();
	msg = FUNC5(skb, sizeof(struct atmsvc_msg));
	msg->type = type;
	*(struct atm_vcc **) &msg->vcc = vcc;
	*(struct atm_vcc **) &msg->listen_vcc = listen_vcc;
	msg->reply = reply;
	if (qos)
		msg->qos = *qos;
	if (vcc)
		msg->sap = vcc->sap;
	if (svc)
		msg->svc = *svc;
	if (vcc)
		msg->local = vcc->local;
	if (pvc)
		msg->pvc = *pvc;
	if (vcc) {
		if (type == as_connect && FUNC6(ATM_VF_SESSION, &vcc->flags))
			msg->session = ++session;
			/* every new pmp connect gets the next session number */
	}
	FUNC4(skb);
	if (vcc)
		FUNC3(ATM_VF_REGIS, &vcc->flags);
}