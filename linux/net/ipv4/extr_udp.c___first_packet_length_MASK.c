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
struct sock {int /*<<< orphan*/  sk_drops; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ truesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  UDP_MIB_CSUMERRORS ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct sock *sk,
					     struct sk_buff_head *rcvq,
					     int *total)
{
	struct sk_buff *skb;

	while ((skb = FUNC5(rcvq)) != NULL) {
		if (FUNC7(skb)) {
			FUNC1(FUNC6(sk), UDP_MIB_CSUMERRORS,
					FUNC0(sk));
			FUNC1(FUNC6(sk), UDP_MIB_INERRORS,
					FUNC0(sk));
			FUNC3(&sk->sk_drops);
			FUNC2(skb, rcvq);
			*total += skb->truesize;
			FUNC4(skb);
		} else {
			FUNC8(skb);
			break;
		}
	}
	return skb;
}