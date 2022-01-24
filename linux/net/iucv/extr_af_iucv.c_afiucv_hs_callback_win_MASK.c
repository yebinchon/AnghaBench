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
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct iucv_sock {int /*<<< orphan*/  msg_sent; } ;
struct TYPE_2__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 scalar_t__ IUCV_CONNECTED ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iucv_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	struct iucv_sock *iucv = FUNC1(sk);

	if (!iucv)
		return NET_RX_SUCCESS;

	if (sk->sk_state != IUCV_CONNECTED)
		return NET_RX_SUCCESS;

	FUNC0(FUNC3(skb)->window, &iucv->msg_sent);
	FUNC2(sk);
	return NET_RX_SUCCESS;
}