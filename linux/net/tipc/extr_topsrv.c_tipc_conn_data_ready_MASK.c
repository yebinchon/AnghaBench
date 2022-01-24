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
struct tipc_conn {int /*<<< orphan*/  rwork; TYPE_1__* server; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; struct tipc_conn* sk_user_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  rcv_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tipc_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_conn*) ; 
 scalar_t__ FUNC2 (struct tipc_conn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct tipc_conn *con;

	FUNC4(&sk->sk_callback_lock);
	con = sk->sk_user_data;
	if (FUNC2(con)) {
		FUNC0(con);
		if (!FUNC3(con->server->rcv_wq, &con->rwork))
			FUNC1(con);
	}
	FUNC5(&sk->sk_callback_lock);
}