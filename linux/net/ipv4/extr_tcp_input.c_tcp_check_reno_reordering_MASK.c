#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {int /*<<< orphan*/  reord_seen; scalar_t__ packets_out; int /*<<< orphan*/  reordering; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sysctl_tcp_max_reordering; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPRENOREORDER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static void FUNC5(struct sock *sk, const int addend)
{
	struct tcp_sock *tp = FUNC4(sk);

	if (!FUNC3(tp))
		return;

	tp->reordering = FUNC1(u32, tp->packets_out + addend,
			       FUNC2(sk)->ipv4.sysctl_tcp_max_reordering);
	tp->reord_seen++;
	FUNC0(FUNC2(sk), LINUX_MIB_TCPRENOREORDER);
}