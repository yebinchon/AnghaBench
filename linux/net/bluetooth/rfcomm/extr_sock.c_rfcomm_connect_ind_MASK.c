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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_ack_backlog; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int dummy; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {struct rfcomm_dlc* dlc; int /*<<< orphan*/  channel; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTPROTO_RFCOMM ; 
 int /*<<< orphan*/  BT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  BT_LISTEN ; 
 int /*<<< orphan*/  BT_SK_DEFER_SETUP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sock*,int) ; 
 TYPE_2__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_session*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sock* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC16(struct rfcomm_session *s, u8 channel, struct rfcomm_dlc **d)
{
	struct sock *sk, *parent;
	bdaddr_t src, dst;
	int result = 0;

	FUNC0("session %p channel %d", s, channel);

	FUNC9(s, &src, &dst);

	/* Check if we have socket listening on channel */
	parent = FUNC7(BT_LISTEN, channel, &src);
	if (!parent)
		return 0;

	FUNC2(parent);

	/* Check for backlog size */
	if (FUNC12(parent)) {
		FUNC0("backlog full %d", parent->sk_ack_backlog);
		goto done;
	}

	sk = FUNC10(FUNC13(parent), NULL, BTPROTO_RFCOMM, GFP_ATOMIC, 0);
	if (!sk)
		goto done;

	FUNC6(sk, BTPROTO_RFCOMM);

	FUNC11(sk, parent);
	FUNC1(&FUNC8(sk)->src, &src);
	FUNC1(&FUNC8(sk)->dst, &dst);
	FUNC8(sk)->channel = channel;

	sk->sk_state = BT_CONFIG;
	FUNC4(parent, sk, true);

	/* Accept connection and return socket DLC */
	*d = FUNC8(sk)->dlc;
	result = 1;

done:
	FUNC3(parent);

	if (FUNC15(BT_SK_DEFER_SETUP, &FUNC5(parent)->flags))
		parent->sk_state_change(parent);

	return result;
}