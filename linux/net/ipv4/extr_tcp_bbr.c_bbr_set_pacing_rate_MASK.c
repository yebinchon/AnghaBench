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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {scalar_t__ srtt_us; } ;
struct sock {unsigned long sk_pacing_rate; } ;
struct bbr {int /*<<< orphan*/  has_seen_rtt; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct sock*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct bbr* FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, u32 bw, int gain)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct bbr *bbr = FUNC3(sk);
	unsigned long rate = FUNC0(sk, bw, gain);

	if (FUNC5(!bbr->has_seen_rtt && tp->srtt_us))
		FUNC2(sk);
	if (FUNC1(sk) || rate > sk->sk_pacing_rate)
		sk->sk_pacing_rate = rate;
}