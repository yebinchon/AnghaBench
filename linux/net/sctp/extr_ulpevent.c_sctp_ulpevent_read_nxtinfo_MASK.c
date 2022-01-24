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
struct sctp_ulpevent {int dummy; } ;
struct msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PEEK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct msghdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sock*,int /*<<< orphan*/ ,int,int*) ; 

void FUNC4(const struct sctp_ulpevent *event,
				struct msghdr *msghdr,
				struct sock *sk)
{
	struct sk_buff *skb;
	int err;

	skb = FUNC3(sk, MSG_PEEK, 1, &err);
	if (skb != NULL) {
		FUNC0(FUNC2(skb),
					     msghdr, skb);
		/* Just release refcount here. */
		FUNC1(skb);
	}
}