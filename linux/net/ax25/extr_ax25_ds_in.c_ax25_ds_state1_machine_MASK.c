#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_17__ {TYPE_3__* sk; int /*<<< orphan*/  n2count; int /*<<< orphan*/  state; int /*<<< orphan*/  vr; int /*<<< orphan*/  va; int /*<<< orphan*/  vs; TYPE_1__* ax25_dev; int /*<<< orphan*/  window; int /*<<< orphan*/  modulus; } ;
typedef  TYPE_2__ ax25_cb ;
struct TYPE_18__ {int /*<<< orphan*/  (* sk_state_change ) (TYPE_3__*) ;int /*<<< orphan*/  sk_state; } ;
struct TYPE_16__ {int /*<<< orphan*/ * values; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_COMMAND ; 
#define  AX25_DISC 132 
#define  AX25_DM 131 
 int /*<<< orphan*/  AX25_EMODULUS ; 
 int /*<<< orphan*/  AX25_MODULUS ; 
 int AX25_POLLON ; 
 int /*<<< orphan*/  AX25_RESPONSE ; 
#define  AX25_SABM 130 
#define  AX25_SABME 129 
 int /*<<< orphan*/  AX25_STATE_3 ; 
#define  AX25_UA 128 
 size_t AX25_VALUES_EWINDOW ; 
 size_t AX25_VALUES_WINDOW ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int const,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC12(ax25_cb *ax25, struct sk_buff *skb, int frametype, int pf, int type)
{
	switch (frametype) {
	case AX25_SABM:
		ax25->modulus = AX25_MODULUS;
		ax25->window  = ax25->ax25_dev->values[AX25_VALUES_WINDOW];
		FUNC3(ax25, AX25_UA, pf, AX25_RESPONSE);
		break;

	case AX25_SABME:
		ax25->modulus = AX25_EMODULUS;
		ax25->window  =  ax25->ax25_dev->values[AX25_VALUES_EWINDOW];
		FUNC3(ax25, AX25_UA, pf, AX25_RESPONSE);
		break;

	case AX25_DISC:
		FUNC3(ax25, AX25_DM, pf, AX25_RESPONSE);
		break;

	case AX25_UA:
		FUNC0(ax25);
		FUNC7(ax25);
		FUNC5(ax25);
		FUNC4(ax25);
		ax25->vs      = 0;
		ax25->va      = 0;
		ax25->vr      = 0;
		ax25->state   = AX25_STATE_3;
		ax25->n2count = 0;
		if (ax25->sk != NULL) {
			FUNC8(ax25->sk);
			ax25->sk->sk_state = TCP_ESTABLISHED;
			/*
			 * For WAIT_SABM connections we will produce an accept
			 * ready socket here
			 */
			if (!FUNC10(ax25->sk, SOCK_DEAD))
				ax25->sk->sk_state_change(ax25->sk);
			FUNC9(ax25->sk);
		}
		FUNC1(ax25);

		/* according to DK4EG's spec we are required to
		 * send a RR RESPONSE FINAL NR=0.
		 */

		FUNC6(ax25);
		break;

	case AX25_DM:
		if (pf)
			FUNC2(ax25, ECONNREFUSED);
		break;

	default:
		if (pf)
			FUNC3(ax25, AX25_SABM, AX25_POLLON, AX25_COMMAND);
		break;
	}

	return 0;
}