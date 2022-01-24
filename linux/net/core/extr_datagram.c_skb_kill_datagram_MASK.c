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
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,int /*<<< orphan*/ *,struct sk_buff*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

int FUNC3(struct sock *sk, struct sk_buff *skb, unsigned int flags)
{
	int err = FUNC0(sk, &sk->sk_receive_queue, skb, flags,
				      NULL);

	FUNC1(skb);
	FUNC2(sk);
	return err;
}