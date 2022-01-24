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
struct sock {int /*<<< orphan*/  sk_allocation; } ;
struct sk_buff {unsigned int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TCP_NAGLE_PUSH ; 
 struct sk_buff* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct sock *sk, unsigned int mss_now)
{
	struct sk_buff *skb = FUNC1(sk);

	FUNC0(!skb || skb->len < mss_now);

	FUNC2(sk, mss_now, TCP_NAGLE_PUSH, 1, sk->sk_allocation);
}