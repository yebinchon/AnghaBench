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
struct sock {int sk_err; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_state; } ;
struct sco_conn {scalar_t__ hcon; int /*<<< orphan*/ * sk; } ;
struct TYPE_2__ {struct sco_conn* conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,struct sco_conn*,int) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct sco_conn*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, int err)
{
	struct sco_conn *conn;

	conn = FUNC4(sk)->conn;

	FUNC0("sk %p, conn %p, err %d", sk, conn, err);

	if (conn) {
		FUNC2(conn);
		conn->sk = NULL;
		FUNC4(sk)->conn = NULL;
		FUNC3(conn);

		if (conn->hcon)
			FUNC1(conn->hcon);
	}

	sk->sk_state = BT_CLOSED;
	sk->sk_err   = err;
	sk->sk_state_change(sk);

	FUNC5(sk, SOCK_ZAPPED);
}