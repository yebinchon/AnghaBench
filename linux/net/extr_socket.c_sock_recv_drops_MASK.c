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
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {scalar_t__ dropcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_RXQ_OVFL ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RXQ_OVFL ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct msghdr *msg, struct sock *sk,
				   struct sk_buff *skb)
{
	if (FUNC2(sk, SOCK_RXQ_OVFL) && skb && FUNC0(skb)->dropcount)
		FUNC1(msg, SOL_SOCKET, SO_RXQ_OVFL,
			sizeof(__u32), &FUNC0(skb)->dropcount);
}