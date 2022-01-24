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

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

void FUNC4(struct sock *sk)
{
	struct sk_buff *skb = NULL;

	if ((skb = FUNC0(sk, 9, GFP_ATOMIC)) == NULL)
		return;

	FUNC3(skb, 9);
	FUNC1(sk, skb, 0x14, 9, 1);
	FUNC2(skb);
}