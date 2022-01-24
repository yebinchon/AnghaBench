#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/ * dev; int /*<<< orphan*/  truesize; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iter; scalar_t__ msg_name; } ;
struct TYPE_5__ {size_t max_sdu; } ;
struct TYPE_6__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_4__* dev; int /*<<< orphan*/  flags; TYPE_2__ qos; } ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int (* send ) (struct atm_vcc*,struct sk_buff*) ;} ;

/* Variables and functions */
 struct atm_vcc* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  ATM_VF_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EFAULT ; 
 int EISCONN ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int EPIPE ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MSG_DONTWAIT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SS_CONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,size_t) ; 
 int FUNC18 (struct atm_vcc*,struct sk_buff*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct atm_vcc*,int) ; 
 int /*<<< orphan*/  wait ; 

int FUNC21(struct socket *sock, struct msghdr *m, size_t size)
{
	struct sock *sk = sock->sk;
	FUNC1(wait);
	struct atm_vcc *vcc;
	struct sk_buff *skb;
	int eff, error;

	FUNC7(sk);
	if (sock->state != SS_CONNECTED) {
		error = -ENOTCONN;
		goto out;
	}
	if (m->msg_name) {
		error = -EISCONN;
		goto out;
	}
	vcc = FUNC0(sock);
	if (FUNC19(ATM_VF_RELEASED, &vcc->flags) ||
	    FUNC19(ATM_VF_CLOSE, &vcc->flags) ||
	    !FUNC19(ATM_VF_READY, &vcc->flags)) {
		error = -EPIPE;
		FUNC13(SIGPIPE, current, 0);
		goto out;
	}
	if (!size) {
		error = 0;
		goto out;
	}
	if (size > vcc->qos.txtp.max_sdu) {
		error = -EMSGSIZE;
		goto out;
	}

	eff = (size+3) & ~3; /* align to word boundary */
	FUNC10(FUNC15(sk), &wait, TASK_INTERRUPTIBLE);
	error = 0;
	while (!FUNC20(vcc, eff)) {
		if (m->msg_flags & MSG_DONTWAIT) {
			error = -EAGAIN;
			break;
		}
		FUNC12();
		if (FUNC14(current)) {
			error = -ERESTARTSYS;
			break;
		}
		if (FUNC19(ATM_VF_RELEASED, &vcc->flags) ||
		    FUNC19(ATM_VF_CLOSE, &vcc->flags) ||
		    !FUNC19(ATM_VF_READY, &vcc->flags)) {
			error = -EPIPE;
			FUNC13(SIGPIPE, current, 0);
			break;
		}
		FUNC10(FUNC15(sk), &wait, TASK_INTERRUPTIBLE);
	}
	FUNC5(FUNC15(sk), &wait);
	if (error)
		goto out;

	skb = FUNC2(eff, GFP_KERNEL);
	if (!skb) {
		error = -ENOMEM;
		goto out;
	}
	FUNC9("%d += %d\n", FUNC16(sk), skb->truesize);
	FUNC3(vcc, skb);

	skb->dev = NULL; /* for paths shared with net_device interfaces */
	if (!FUNC4(FUNC17(skb, size), size, &m->msg_iter)) {
		FUNC6(skb);
		error = -EFAULT;
		goto out;
	}
	if (eff != size)
		FUNC8(skb->data + size, 0, eff-size);
	error = vcc->dev->ops->send(vcc, skb);
	error = error ? error : size;
out:
	FUNC11(sk);
	return error;
}