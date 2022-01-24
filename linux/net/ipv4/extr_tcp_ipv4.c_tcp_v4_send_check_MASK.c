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
struct inet_sock {int /*<<< orphan*/  inet_daddr; int /*<<< orphan*/  inet_saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 

void FUNC2(struct sock *sk, struct sk_buff *skb)
{
	const struct inet_sock *inet = FUNC1(sk);

	FUNC0(skb, inet->inet_saddr, inet->inet_daddr);
}