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
struct sock {int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {struct sock* sk; } ;
struct sctp_ulpevent {int /*<<< orphan*/  rmem_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sctp_ulpevent* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC3(struct sk_buff *skb)
{
	struct sock *sk = skb->sk;
	struct sctp_ulpevent *event = FUNC1(skb);

	FUNC0(event->rmem_len, &sk->sk_rmem_alloc);

	/*
	 * Mimic the behavior of sock_rfree
	 */
	FUNC2(sk, event->rmem_len);
}