#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_state; } ;
struct TYPE_3__ {scalar_t__ rcv_nxt; scalar_t__ snd_wl1; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPWINPROBE ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct sock *sk)
{
	if (sk->sk_state == TCP_ESTABLISHED) {
		FUNC1(sk)->snd_wl1 = FUNC1(sk)->rcv_nxt - 1;
		FUNC0(FUNC1(sk));
		FUNC2(sk, 0, LINUX_MIB_TCPWINPROBE);
	}
}