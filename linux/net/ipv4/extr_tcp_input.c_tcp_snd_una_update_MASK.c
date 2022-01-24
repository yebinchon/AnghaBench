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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ snd_una; int /*<<< orphan*/  bytes_acked; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 

__attribute__((used)) static void FUNC1(struct tcp_sock *tp, u32 ack)
{
	u32 delta = ack - tp->snd_una;

	FUNC0((struct sock *)tp);
	tp->bytes_acked += delta;
	tp->snd_una = ack;
}