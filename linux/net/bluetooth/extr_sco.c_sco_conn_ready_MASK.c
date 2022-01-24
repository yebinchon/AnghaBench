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
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;void* sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sco_conn {TYPE_2__* hcon; struct sock* sk; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTPROTO_SCO ; 
 void* BT_CONNECT2 ; 
 void* BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sco_conn*) ; 
 int /*<<< orphan*/  BT_SK_DEFER_SETUP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct sco_conn*,struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 TYPE_3__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct sco_conn*) ; 
 struct sock* FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (struct sock*) ; 
 struct sock* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct sco_conn *conn)
{
	struct sock *parent;
	struct sock *sk = conn->sk;

	FUNC0("conn %p", conn);

	if (sk) {
		FUNC12(sk);
		FUNC3(sk);
		sk->sk_state = BT_CONNECTED;
		sk->sk_state_change(sk);
		FUNC4(sk);
	} else {
		FUNC7(conn);

		if (!conn->hcon) {
			FUNC8(conn);
			return;
		}

		parent = FUNC9(&conn->hcon->src);
		if (!parent) {
			FUNC8(conn);
			return;
		}

		FUNC3(parent);

		sk = FUNC11(FUNC14(parent), NULL,
				    BTPROTO_SCO, GFP_ATOMIC, 0);
		if (!sk) {
			FUNC4(parent);
			FUNC8(conn);
			return;
		}

		FUNC13(sk, parent);

		FUNC2(&FUNC10(sk)->src, &conn->hcon->src);
		FUNC2(&FUNC10(sk)->dst, &conn->hcon->dst);

		FUNC6(conn->hcon);
		FUNC1(conn, sk, parent);

		if (FUNC17(BT_SK_DEFER_SETUP, &FUNC5(parent)->flags))
			sk->sk_state = BT_CONNECT2;
		else
			sk->sk_state = BT_CONNECTED;

		/* Wake up parent */
		parent->sk_data_ready(parent);

		FUNC4(parent);

		FUNC8(conn);
	}
}