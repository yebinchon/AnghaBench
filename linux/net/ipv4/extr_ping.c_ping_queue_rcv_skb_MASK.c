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
struct TYPE_2__ {int /*<<< orphan*/  inet_num; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*) ; 

int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	FUNC2("ping_queue_rcv_skb(sk=%p,sk->num=%d,skb=%p)\n",
		 FUNC0(sk), FUNC0(sk)->inet_num, skb);
	if (FUNC3(sk, skb) < 0) {
		FUNC1(skb);
		FUNC2("ping_queue_rcv_skb -> failed\n");
		return -1;
	}
	return 0;
}