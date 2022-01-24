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
struct tcp_sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;

/* Variables and functions */
 int TCPCB_RETRANS ; 
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (struct tcp_sock const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct tcp_sock *tp,
				     const struct sk_buff *skb)
{
	return (FUNC0(skb)->sacked & TCPCB_RETRANS) &&
	       FUNC2(tp, FUNC1(skb));
}