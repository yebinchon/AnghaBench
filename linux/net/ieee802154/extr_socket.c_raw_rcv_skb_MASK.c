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
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, struct sk_buff *skb)
{
	skb = FUNC1(skb, GFP_ATOMIC);
	if (!skb)
		return NET_RX_DROP;

	if (FUNC2(sk, skb) < 0) {
		FUNC0(skb);
		return NET_RX_DROP;
	}

	return NET_RX_SUCCESS;
}