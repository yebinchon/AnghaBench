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
struct j1939_sock {int /*<<< orphan*/  sk_session_queue_lock; } ;
struct j1939_session {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 struct j1939_sock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct j1939_session *session)
{
	struct j1939_sock *jsk;

	if (!session->sk)
		return;

	jsk = FUNC0(session->sk);

	FUNC2(&jsk->sk_session_queue_lock);
	FUNC1(session);
	FUNC3(&jsk->sk_session_queue_lock);
}