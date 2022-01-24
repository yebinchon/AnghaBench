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
struct sk_buff {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CHRONO_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, struct sk_buff *skb)
{
	if (skb && !skb->len) {
		FUNC2(skb, sk);
		if (FUNC3(sk))
			FUNC1(sk, TCP_CHRONO_BUSY);
		FUNC0(sk, skb);
	}
}