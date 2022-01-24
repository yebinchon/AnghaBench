#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; int sk_userlocks; TYPE_1__* sk_prot; } ;
struct TYPE_6__ {int /*<<< orphan*/  dccps_featneg; } ;
struct TYPE_5__ {int /*<<< orphan*/ * icsk_bind_hash; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* unhash ) (struct sock*) ;} ;

/* Variables and functions */
 int const DCCP_ACTIVE_CLOSEREQ ; 
#define  DCCP_CLOSED 129 
 int const DCCP_CLOSING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  DCCP_MIB_ESTABRESETS ; 
#define  DCCP_OPEN 128 
 int const DCCP_PARTOPEN ; 
 int SOCK_BINDPORT_LOCK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 TYPE_3__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 TYPE_2__* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int const) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

void FUNC12(struct sock *sk, const int state)
{
	const int oldstate = sk->sk_state;

	FUNC4("%s(%p)  %s  -->  %s\n", FUNC5(sk), sk,
		      FUNC7(oldstate), FUNC7(state));
	FUNC2(state == oldstate);

	switch (state) {
	case DCCP_OPEN:
		if (oldstate != DCCP_OPEN)
			FUNC1(DCCP_MIB_CURRESTAB);
		/* Client retransmits all Confirm options until entering OPEN */
		if (oldstate == DCCP_PARTOPEN)
			FUNC3(&FUNC6(sk)->dccps_featneg);
		break;

	case DCCP_CLOSED:
		if (oldstate == DCCP_OPEN || oldstate == DCCP_ACTIVE_CLOSEREQ ||
		    oldstate == DCCP_CLOSING)
			FUNC1(DCCP_MIB_ESTABRESETS);

		sk->sk_prot->unhash(sk);
		if (FUNC8(sk)->icsk_bind_hash != NULL &&
		    !(sk->sk_userlocks & SOCK_BINDPORT_LOCK))
			FUNC9(sk);
		/* fall through */
	default:
		if (oldstate == DCCP_OPEN)
			FUNC0(DCCP_MIB_CURRESTAB);
	}

	/* Change state AFTER socket is unhashed to avoid closed
	 * socket sitting in hash tables.
	 */
	FUNC10(sk, state);
}