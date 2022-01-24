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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ snd_una; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  end_seq; scalar_t__ seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sock*,struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static u32 FUNC7(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC4(sk);
	u32 packets_acked;

	FUNC0(!FUNC2(FUNC1(skb)->end_seq, tp->snd_una));

	packets_acked = FUNC5(skb);
	if (FUNC6(sk, skb, tp->snd_una - FUNC1(skb)->seq))
		return 0;
	packets_acked -= FUNC5(skb);

	if (packets_acked) {
		FUNC0(FUNC5(skb) == 0);
		FUNC0(!FUNC3(FUNC1(skb)->seq, FUNC1(skb)->end_seq));
	}

	return packets_acked;
}