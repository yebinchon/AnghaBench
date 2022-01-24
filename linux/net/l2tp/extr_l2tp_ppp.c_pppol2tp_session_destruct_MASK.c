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
struct sock {struct l2tp_session* sk_user_data; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct l2tp_session {scalar_t__ magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ L2TP_SESSION_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct l2tp_session *session = sk->sk_user_data;

	FUNC2(&sk->sk_receive_queue);
	FUNC2(&sk->sk_write_queue);

	if (session) {
		sk->sk_user_data = NULL;
		FUNC0(session->magic != L2TP_SESSION_MAGIC);
		FUNC1(session);
	}
}