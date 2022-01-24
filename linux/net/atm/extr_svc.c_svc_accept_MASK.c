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
struct socket {int /*<<< orphan*/  state; struct sock* sk; } ;
struct sock {int sk_err; int /*<<< orphan*/  sk_ack_backlog; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; int /*<<< orphan*/  itf; } ;
struct TYPE_4__ {TYPE_1__ sap_addr; } ;
struct atmsvc_msg {TYPE_2__ pvc; int /*<<< orphan*/  sap; int /*<<< orphan*/  local; int /*<<< orphan*/  svc; int /*<<< orphan*/  qos; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  qos; int /*<<< orphan*/  sap; int /*<<< orphan*/  local; int /*<<< orphan*/  remote; } ;

/* Variables and functions */
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_HASQOS ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ERESTARTSYS ; 
 int EUNATCH ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  as_accept ; 
 int /*<<< orphan*/  as_reject ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct atm_vcc*,struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ sigd ; 
 int /*<<< orphan*/  FUNC10 (struct atm_vcc*,int /*<<< orphan*/ ,struct atm_vcc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct atm_vcc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct sock* FUNC13 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 struct sk_buff* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct socket*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC20(struct socket *sock, struct socket *newsock, int flags,
		      bool kern)
{
	struct sock *sk = sock->sk;
	struct sk_buff *skb;
	struct atmsvc_msg *msg;
	struct atm_vcc *old_vcc = FUNC0(sock);
	struct atm_vcc *new_vcc;
	int error;

	FUNC4(sk);

	error = FUNC17(FUNC16(sk), newsock, 0, kern);
	if (error)
		goto out;

	new_vcc = FUNC0(newsock);

	FUNC5("%p -> %p\n", old_vcc, new_vcc);
	while (1) {
		FUNC1(wait);

		FUNC6(FUNC14(sk), &wait, TASK_INTERRUPTIBLE);
		while (!(skb = FUNC15(&sk->sk_receive_queue)) &&
		       sigd) {
			if (FUNC18(ATM_VF_RELEASED, &old_vcc->flags))
				break;
			if (FUNC18(ATM_VF_CLOSE, &old_vcc->flags)) {
				error = -sk->sk_err;
				break;
			}
			if (flags & O_NONBLOCK) {
				error = -EAGAIN;
				break;
			}
			FUNC7(sk);
			FUNC8();
			FUNC4(sk);
			if (FUNC12(current)) {
				error = -ERESTARTSYS;
				break;
			}
			FUNC6(FUNC14(sk), &wait,
					TASK_INTERRUPTIBLE);
		}
		FUNC3(FUNC14(sk), &wait);
		if (error)
			goto out;
		if (!skb) {
			error = -EUNATCH;
			goto out;
		}
		msg = (struct atmsvc_msg *)skb->data;
		new_vcc->qos = msg->qos;
		FUNC9(ATM_VF_HASQOS, &new_vcc->flags);
		new_vcc->remote = msg->svc;
		new_vcc->local = msg->local;
		new_vcc->sap = msg->sap;
		error = FUNC19(newsock, msg->pvc.sap_addr.itf,
				    msg->pvc.sap_addr.vpi,
				    msg->pvc.sap_addr.vci);
		FUNC2(skb);
		sk->sk_ack_backlog--;
		if (error) {
			FUNC11(NULL, as_reject, old_vcc, NULL, NULL,
				  &old_vcc->qos, error);
			error = error == -EAGAIN ? -EBUSY : error;
			goto out;
		}
		/* wait should be short, so we ignore the non-blocking flag */
		FUNC9(ATM_VF_WAITING, &new_vcc->flags);
		FUNC10(new_vcc, as_accept, old_vcc, NULL, NULL);
		for (;;) {
			FUNC6(FUNC14(FUNC13(new_vcc)), &wait,
					TASK_UNINTERRUPTIBLE);
			if (!FUNC18(ATM_VF_WAITING, &new_vcc->flags) || !sigd)
				break;
			FUNC7(sk);
			FUNC8();
			FUNC4(sk);
		}
		FUNC3(FUNC14(FUNC13(new_vcc)), &wait);
		if (!sigd) {
			error = -EUNATCH;
			goto out;
		}
		if (!FUNC13(new_vcc)->sk_err)
			break;
		if (FUNC13(new_vcc)->sk_err != ERESTARTSYS) {
			error = -FUNC13(new_vcc)->sk_err;
			goto out;
		}
	}
	newsock->state = SS_CONNECTED;
out:
	FUNC7(sk);
	return error;
}