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
typedef  scalar_t__ u16 ;
struct sock {scalar_t__ sk_err; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dccph_reset_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCP_TIME_WAIT ; 
 int /*<<< orphan*/  POLL_ERR ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_WAKE_IO ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, struct sk_buff *skb)
{
	u16 err = FUNC2(FUNC1(skb)->dccph_reset_code);

	sk->sk_err = err;

	/* Queue the equivalent of TCP fin so that dccp_recvmsg exits the loop */
	FUNC0(sk, skb);

	if (err && !FUNC5(sk, SOCK_DEAD))
		FUNC4(sk, SOCK_WAKE_IO, POLL_ERR);
	FUNC3(sk, DCCP_TIME_WAIT, 0);
}