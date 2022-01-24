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
struct TYPE_2__ {scalar_t__ reo_wnd_persist; } ;
struct tcp_sock {TYPE_1__ rack; int /*<<< orphan*/  undo_retrans; scalar_t__ undo_marker; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  LINUX_MIB_TCPDSACKUNDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_RACK_RECOVERY_THRESH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int) ; 

__attribute__((used)) static bool FUNC6(struct sock *sk)
{
	struct tcp_sock *tp = FUNC4(sk);

	if (tp->undo_marker && !tp->undo_retrans) {
		tp->rack.reo_wnd_persist = FUNC2(TCP_RACK_RECOVERY_THRESH,
					       tp->rack.reo_wnd_persist + 1);
		FUNC0(sk, "D-SACK");
		FUNC5(sk, false);
		FUNC1(FUNC3(sk), LINUX_MIB_TCPDSACKUNDO);
		return true;
	}
	return false;
}