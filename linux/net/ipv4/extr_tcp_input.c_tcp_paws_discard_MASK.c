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
struct tcp_sock {int /*<<< orphan*/  rx_opt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_PAWS_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (struct sock const*,struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC2 (struct sock const*) ; 

__attribute__((used)) static inline bool FUNC3(const struct sock *sk,
				   const struct sk_buff *skb)
{
	const struct tcp_sock *tp = FUNC2(sk);

	return !FUNC1(&tp->rx_opt, TCP_PAWS_WINDOW) &&
	       !FUNC0(sk, skb);
}