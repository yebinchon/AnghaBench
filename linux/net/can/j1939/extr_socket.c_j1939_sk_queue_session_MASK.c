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
struct j1939_sock {int /*<<< orphan*/  sk; int /*<<< orphan*/  sk_session_queue_lock; int /*<<< orphan*/  sk_session_queue; } ;
struct j1939_session {int /*<<< orphan*/  sk_session_queue_entry; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct j1939_session*) ; 
 struct j1939_sock* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct j1939_session *session)
{
	struct j1939_sock *jsk = FUNC1(session->sk);
	bool empty;

	FUNC5(&jsk->sk_session_queue_lock);
	empty = FUNC4(&jsk->sk_session_queue);
	FUNC0(session);
	FUNC3(&session->sk_session_queue_entry, &jsk->sk_session_queue);
	FUNC6(&jsk->sk_session_queue_lock);
	FUNC2(&jsk->sk);

	return empty;
}