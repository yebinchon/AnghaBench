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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int sk_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  dccps_server_timewait; int /*<<< orphan*/  dccps_role; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCP_ACTIVE_CLOSEREQ ; 
 int /*<<< orphan*/  DCCP_CLOSED ; 
 int /*<<< orphan*/  DCCP_CLOSING ; 
#define  DCCP_OPEN 131 
#define  DCCP_PARTOPEN 130 
#define  DCCP_PASSIVE_CLOSE 129 
#define  DCCP_PASSIVE_CLOSEREQ 128 
 int /*<<< orphan*/  DCCP_ROLE_SERVER ; 
 int /*<<< orphan*/  ICSK_TIME_DACK ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	u8 next_state = DCCP_CLOSED;

	switch (sk->sk_state) {
	case DCCP_PASSIVE_CLOSE:
	case DCCP_PASSIVE_CLOSEREQ:
		FUNC0(sk);
		break;
	case DCCP_PARTOPEN:
		FUNC1("Stop PARTOPEN timer (%p)\n", sk);
		FUNC5(sk, ICSK_TIME_DACK);
		/* fall through */
	case DCCP_OPEN:
		FUNC2(sk, 1);

		if (FUNC4(sk)->dccps_role == DCCP_ROLE_SERVER &&
		    !FUNC4(sk)->dccps_server_timewait)
			next_state = DCCP_ACTIVE_CLOSEREQ;
		else
			next_state = DCCP_CLOSING;
		/* fall through */
	default:
		FUNC3(sk, next_state);
	}
}