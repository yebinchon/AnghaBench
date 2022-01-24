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
struct tcp_sock {scalar_t__ retrans_stamp; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;

/* Variables and functions */
 int FLAG_ECE ; 
 scalar_t__ TCP_CA_CWR ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, int flag)
{
	struct tcp_sock *tp = FUNC3(sk);

	FUNC5(tp);

	if (!FUNC1(sk))
		tp->retrans_stamp = 0;

	if (flag & FLAG_ECE)
		FUNC2(sk);

	if (FUNC0(sk)->icsk_ca_state != TCP_CA_CWR) {
		FUNC4(sk);
	}
}