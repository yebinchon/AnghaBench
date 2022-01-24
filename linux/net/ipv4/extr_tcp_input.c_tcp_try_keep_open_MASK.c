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
struct tcp_sock {int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  high_seq; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int icsk_ca_state; } ;

/* Variables and functions */
 int TCP_CA_Disorder ; 
 int TCP_CA_Open ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct tcp_sock *tp = FUNC4(sk);
	int state = TCP_CA_Open;

	if (FUNC2(tp) || FUNC1(sk))
		state = TCP_CA_Disorder;

	if (FUNC0(sk)->icsk_ca_state != state) {
		FUNC3(sk, state);
		tp->high_seq = tp->snd_nxt;
	}
}