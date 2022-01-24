#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_err_soft; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_ack_backlog; int /*<<< orphan*/  sk_err; int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int /*<<< orphan*/  truesize; scalar_t__ data; } ;
struct TYPE_11__ {int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; int /*<<< orphan*/  itf; } ;
struct TYPE_12__ {TYPE_5__ sap_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  pub; int /*<<< orphan*/  prv; } ;
struct TYPE_10__ {TYPE_3__ sas_addr; } ;
struct atmsvc_msg {int type; int /*<<< orphan*/  reply; int /*<<< orphan*/  listen_vcc; int /*<<< orphan*/  qos; TYPE_6__ pvc; TYPE_4__ local; int /*<<< orphan*/  vcc; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pub; int /*<<< orphan*/ * prv; } ;
struct TYPE_8__ {TYPE_1__ sas_addr; int /*<<< orphan*/  sas_family; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  qos; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; int /*<<< orphan*/  itf; struct atm_vcc* session; TYPE_2__ local; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_ATMSVC ; 
 int /*<<< orphan*/  ATM_E164_LEN ; 
 int /*<<< orphan*/  ATM_ESA_LEN ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  ATM_VF_REGIS ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  as_addparty 134 
#define  as_close 133 
#define  as_dropparty 132 
#define  as_error 131 
#define  as_indicate 130 
#define  as_modify 129 
#define  as_okay 128 
 int /*<<< orphan*/  as_reject ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct atm_vcc*,struct atmsvc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct atm_vcc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 struct sock* FUNC13 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct atm_vcc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct atm_vcc *vcc, struct sk_buff *skb)
{
	struct atmsvc_msg *msg;
	struct atm_vcc *session_vcc;
	struct sock *sk;

	msg = (struct atmsvc_msg *) skb->data;
	FUNC0(FUNC8(skb->truesize, &FUNC13(vcc)->sk_wmem_alloc));
	vcc = *(struct atm_vcc **) &msg->vcc;
	FUNC7("%d (0x%lx)\n", (int)msg->type, (unsigned long)vcc);
	sk = FUNC13(vcc);

	switch (msg->type) {
	case as_okay:
		sk->sk_err = -msg->reply;
		FUNC1(ATM_VF_WAITING, &vcc->flags);
		if (!*vcc->local.sas_addr.prv && !*vcc->local.sas_addr.pub) {
			vcc->local.sas_family = AF_ATMSVC;
			FUNC4(vcc->local.sas_addr.prv,
			       msg->local.sas_addr.prv, ATM_ESA_LEN);
			FUNC4(vcc->local.sas_addr.pub,
			       msg->local.sas_addr.pub, ATM_E164_LEN + 1);
		}
		session_vcc = vcc->session ? vcc->session : vcc;
		if (session_vcc->vpi || session_vcc->vci)
			break;
		session_vcc->itf = msg->pvc.sap_addr.itf;
		session_vcc->vpi = msg->pvc.sap_addr.vpi;
		session_vcc->vci = msg->pvc.sap_addr.vci;
		if (session_vcc->vpi || session_vcc->vci)
			session_vcc->qos = msg->qos;
		break;
	case as_error:
		FUNC1(ATM_VF_REGIS, &vcc->flags);
		FUNC1(ATM_VF_READY, &vcc->flags);
		sk->sk_err = -msg->reply;
		FUNC1(ATM_VF_WAITING, &vcc->flags);
		break;
	case as_indicate:
		vcc = *(struct atm_vcc **)&msg->listen_vcc;
		sk = FUNC13(vcc);
		FUNC7("as_indicate!!!\n");
		FUNC3(sk);
		if (FUNC12(sk)) {
			FUNC11(NULL, as_reject, vcc, NULL, NULL);
			FUNC2(skb);
			goto as_indicate_complete;
		}
		sk->sk_ack_backlog++;
		FUNC15(&sk->sk_receive_queue, skb);
		FUNC7("waking sk_sleep(sk) 0x%p\n", FUNC14(sk));
		sk->sk_state_change(sk);
as_indicate_complete:
		FUNC9(sk);
		return 0;
	case as_close:
		FUNC10(ATM_VF_RELEASED, &vcc->flags);
		FUNC18(vcc, msg->reply);
		goto out;
	case as_modify:
		FUNC5(vcc, msg);
		break;
	case as_addparty:
	case as_dropparty:
		sk->sk_err_soft = -msg->reply;
					/* < 0 failure, otherwise ep_ref */
		FUNC1(ATM_VF_WAITING, &vcc->flags);
		break;
	default:
		FUNC6("bad message type %d\n", (int)msg->type);
		return -EINVAL;
	}
	sk->sk_state_change(sk);
out:
	FUNC2(skb);
	return 0;
}