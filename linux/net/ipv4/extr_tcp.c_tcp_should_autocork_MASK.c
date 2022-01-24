#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int len; scalar_t__ truesize; } ;
struct TYPE_3__ {scalar_t__ sysctl_tcp_autocorking; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static bool FUNC3(struct sock *sk, struct sk_buff *skb,
				int size_goal)
{
	return skb->len < size_goal &&
	       FUNC1(sk)->ipv4.sysctl_tcp_autocorking &&
	       !FUNC2(sk) &&
	       FUNC0(&sk->sk_wmem_alloc) > skb->truesize;
}