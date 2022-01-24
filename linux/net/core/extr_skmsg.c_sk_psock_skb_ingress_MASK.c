#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_psock {struct sock* sk; } ;
struct TYPE_2__ {int size; int end; scalar_t__ start; int /*<<< orphan*/  data; } ;
struct sk_msg {struct sk_buff* skb; TYPE_1__ sg; } ;
struct sk_buff {int len; } ;

/* Variables and functions */
 int EAGAIN ; 
 int GFP_ATOMIC ; 
 int MAX_MSG_FRAGS ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_msg*) ; 
 struct sk_msg* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_psock*,struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*,int) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sk_psock *psock, struct sk_buff *skb)
{
	struct sock *sk = psock->sk;
	int copied = 0, num_sge;
	struct sk_msg *msg;

	msg = FUNC1(sizeof(*msg), __GFP_NOWARN | GFP_ATOMIC);
	if (FUNC8(!msg))
		return -EAGAIN;
	if (!FUNC6(sk, skb, skb->len)) {
		FUNC0(msg);
		return -EAGAIN;
	}

	FUNC3(msg);
	num_sge = FUNC7(skb, msg->sg.data, 0, skb->len);
	if (FUNC8(num_sge < 0)) {
		FUNC0(msg);
		return num_sge;
	}

	FUNC2(sk, skb->len);
	copied = skb->len;
	msg->sg.start = 0;
	msg->sg.size = copied;
	msg->sg.end = num_sge == MAX_MSG_FRAGS ? 0 : num_sge;
	msg->skb = skb;

	FUNC5(psock, msg);
	FUNC4(sk, psock);
	return copied;
}