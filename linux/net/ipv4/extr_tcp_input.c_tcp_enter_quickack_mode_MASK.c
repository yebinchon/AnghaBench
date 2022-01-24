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
struct TYPE_2__ {int /*<<< orphan*/  ato; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_ATO_MIN ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,unsigned int) ; 

void FUNC3(struct sock *sk, unsigned int max_quickacks)
{
	struct inet_connection_sock *icsk = FUNC0(sk);

	FUNC2(sk, max_quickacks);
	FUNC1(sk);
	icsk->icsk_ack.ato = TCP_ATO_MIN;
}