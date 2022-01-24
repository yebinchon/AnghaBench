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
struct tipc_topsrv {int /*<<< orphan*/  awork; int /*<<< orphan*/  rcv_wq; scalar_t__ listener; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; struct tipc_topsrv* sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct tipc_topsrv *srv;

	FUNC1(&sk->sk_callback_lock);
	srv = sk->sk_user_data;
	if (srv->listener)
		FUNC0(srv->rcv_wq, &srv->awork);
	FUNC2(&sk->sk_callback_lock);
}