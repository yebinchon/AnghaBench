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
struct tcp_sock {scalar_t__ rcv_nxt; int /*<<< orphan*/  bytes_received; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct tcp_sock *tp, u32 seq)
{
	u32 delta = seq - tp->rcv_nxt;

	FUNC1((struct sock *)tp);
	tp->bytes_received += delta;
	FUNC0(tp->rcv_nxt, seq);
}