#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* sk; int /*<<< orphan*/  state; scalar_t__ n2count; } ;
typedef  TYPE_1__ ax25_cb ;
struct TYPE_15__ {int /*<<< orphan*/  (* sk_state_change ) (TYPE_2__*) ;int /*<<< orphan*/  sk_shutdown; scalar_t__ sk_err; int /*<<< orphan*/  sk_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_COMMAND ; 
 int /*<<< orphan*/  AX25_DISC ; 
 int /*<<< orphan*/  AX25_POLLON ; 
 int /*<<< orphan*/  AX25_STATE_2 ; 
 int /*<<< orphan*/  SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

void FUNC11(ax25_cb *ax25)
{
	FUNC1(ax25);

	ax25->n2count = 0;
	FUNC2(ax25, AX25_DISC, AX25_POLLON, AX25_COMMAND);
	ax25->state   = AX25_STATE_2;

	FUNC0(ax25);
	FUNC3(ax25);
	FUNC4(ax25);
	FUNC5(ax25);

	if (ax25->sk != NULL) {
		FUNC6(ax25->sk);
		ax25->sk->sk_state     = TCP_CLOSE;
		ax25->sk->sk_err       = 0;
		ax25->sk->sk_shutdown |= SEND_SHUTDOWN;
		if (!FUNC8(ax25->sk, SOCK_DEAD)) {
			ax25->sk->sk_state_change(ax25->sk);
			FUNC9(ax25->sk, SOCK_DEAD);
		}
		FUNC7(ax25->sk);
	}
}