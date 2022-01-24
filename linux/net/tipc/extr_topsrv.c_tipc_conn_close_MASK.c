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
struct tipc_conn {TYPE_1__* sock; int /*<<< orphan*/  flags; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; } ;
struct TYPE_2__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CONNECTED ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC0 (struct tipc_conn*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tipc_conn *con)
{
	struct sock *sk = con->sock->sk;
	bool disconnect = false;

	FUNC4(&sk->sk_callback_lock);
	disconnect = FUNC2(CF_CONNECTED, &con->flags);

	if (disconnect) {
		sk->sk_user_data = NULL;
		FUNC3(con, NULL);
	}
	FUNC5(&sk->sk_callback_lock);

	/* Handle concurrent calls from sending and receiving threads */
	if (!disconnect)
		return;

	/* Don't flush pending works, -just let them expire */
	FUNC1(con->sock, SHUT_RDWR);

	FUNC0(con);
}