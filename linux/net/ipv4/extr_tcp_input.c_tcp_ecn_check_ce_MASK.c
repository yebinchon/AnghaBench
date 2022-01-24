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
struct TYPE_2__ {int ecn_flags; } ;

/* Variables and functions */
 int TCP_ECN_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff const*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, const struct sk_buff *skb)
{
	if (FUNC1(sk)->ecn_flags & TCP_ECN_OK)
		FUNC0(sk, skb);
}