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
struct sk_buff {int dummy; } ;
struct rose_sock {int state; } ;

/* Variables and functions */
 int ROSE_STATE_0 ; 
#define  ROSE_STATE_1 132 
#define  ROSE_STATE_2 131 
#define  ROSE_STATE_3 130 
#define  ROSE_STATE_4 129 
#define  ROSE_STATE_5 128 
 int FUNC0 (struct sk_buff*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct rose_sock* FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,struct sk_buff*,int) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int,int,int,int,int,int) ; 
 int FUNC6 (struct sock*,struct sk_buff*,int) ; 
 int FUNC7 (struct sock*,struct sk_buff*,int) ; 

int FUNC8(struct sock *sk, struct sk_buff *skb)
{
	struct rose_sock *rose = FUNC2(sk);
	int queued = 0, frametype, ns, nr, q, d, m;

	if (rose->state == ROSE_STATE_0)
		return 0;

	frametype = FUNC0(skb, &ns, &nr, &q, &d, &m);

	switch (rose->state) {
	case ROSE_STATE_1:
		queued = FUNC3(sk, skb, frametype);
		break;
	case ROSE_STATE_2:
		queued = FUNC4(sk, skb, frametype);
		break;
	case ROSE_STATE_3:
		queued = FUNC5(sk, skb, frametype, ns, nr, q, d, m);
		break;
	case ROSE_STATE_4:
		queued = FUNC6(sk, skb, frametype);
		break;
	case ROSE_STATE_5:
		queued = FUNC7(sk, skb, frametype);
		break;
	}

	FUNC1(sk);

	return queued;
}