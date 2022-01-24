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
struct sock {int dummy; } ;
struct sk_buff {int* data; } ;
struct nr_sock {int state; } ;

/* Variables and functions */
 int NR_STATE_0 ; 
#define  NR_STATE_1 130 
#define  NR_STATE_2 129 
#define  NR_STATE_3 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 struct nr_sock* FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*,struct sk_buff*,int) ; 
 int FUNC3 (struct sock*,struct sk_buff*,int) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int) ; 

int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	struct nr_sock *nr = FUNC1(sk);
	int queued = 0, frametype;

	if (nr->state == NR_STATE_0)
		return 0;

	frametype = skb->data[19];

	switch (nr->state) {
	case NR_STATE_1:
		queued = FUNC2(sk, skb, frametype);
		break;
	case NR_STATE_2:
		queued = FUNC3(sk, skb, frametype);
		break;
	case NR_STATE_3:
		queued = FUNC4(sk, skb, frametype);
		break;
	}

	FUNC0(sk);

	return queued;
}