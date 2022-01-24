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
struct sock {int sk_err; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; } ;
struct atm_vcc {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_WAITING ; 
 int /*<<< orphan*/  RCV_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sock* FUNC2 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

void FUNC4(struct atm_vcc *vcc, int reply)
{
	struct sock *sk = FUNC2(vcc);

	FUNC1(ATM_VF_CLOSE, &vcc->flags);
	sk->sk_shutdown |= RCV_SHUTDOWN;
	sk->sk_err = -reply;
	FUNC0(ATM_VF_WAITING, &vcc->flags);
	sk->sk_state_change(sk);
}