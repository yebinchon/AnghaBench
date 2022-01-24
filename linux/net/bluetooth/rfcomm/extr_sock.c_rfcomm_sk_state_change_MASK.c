#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_err; scalar_t__ sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;} ;
struct rfcomm_dlc {scalar_t__ state; int /*<<< orphan*/  session; struct sock* owner; } ;
struct TYPE_4__ {struct sock* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,scalar_t__,int) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 TYPE_2__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_dlc*) ; 
 TYPE_1__* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 

__attribute__((used)) static void FUNC16(struct rfcomm_dlc *d, int err)
{
	struct sock *sk = d->owner, *parent;
	unsigned long flags;

	if (!sk)
		return;

	FUNC0("dlc %p state %ld err %d", d, d->state, err);

	FUNC6(flags);
	FUNC1(sk);

	if (err)
		sk->sk_err = err;

	sk->sk_state = d->state;

	parent = FUNC4(sk)->parent;
	if (parent) {
		if (d->state == BT_CLOSED) {
			FUNC13(sk, SOCK_ZAPPED);
			FUNC3(sk);
		}
		parent->sk_data_ready(parent);
	} else {
		if (d->state == BT_CONNECTED)
			FUNC10(d->session,
					       &FUNC9(sk)->src, NULL);
		sk->sk_state_change(sk);
	}

	FUNC2(sk);
	FUNC5(flags);

	if (parent && FUNC12(sk, SOCK_ZAPPED)) {
		/* We have to drop DLC lock here, otherwise
		 * rfcomm_sock_destruct() will dead lock. */
		FUNC8(d);
		FUNC11(sk);
		FUNC7(d);
	}
}