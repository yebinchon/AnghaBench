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
struct x25_sock {int state; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int X25_STATE_0 ; 
#define  X25_STATE_1 131 
#define  X25_STATE_2 130 
#define  X25_STATE_3 129 
#define  X25_STATE_4 128 
 int FUNC0 (struct sock*,struct sk_buff*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct x25_sock* FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,struct sk_buff*,int) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int,int,int,int,int,int) ; 
 int FUNC6 (struct sock*,struct sk_buff*,int) ; 

int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	struct x25_sock *x25 = FUNC2(sk);
	int queued = 0, frametype, ns, nr, q, d, m;

	if (x25->state == X25_STATE_0)
		return 0;

	frametype = FUNC0(sk, skb, &ns, &nr, &q, &d, &m);

	switch (x25->state) {
	case X25_STATE_1:
		queued = FUNC3(sk, skb, frametype);
		break;
	case X25_STATE_2:
		queued = FUNC4(sk, skb, frametype);
		break;
	case X25_STATE_3:
		queued = FUNC5(sk, skb, frametype, ns, nr, q, d, m);
		break;
	case X25_STATE_4:
		queued = FUNC6(sk, skb, frametype);
		break;
	}

	FUNC1(sk);

	return queued;
}