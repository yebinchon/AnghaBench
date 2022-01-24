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
struct sock {int dummy; } ;
struct pppol2tp_session {int /*<<< orphan*/  sk; } ;
struct l2tp_session {int dummy; } ;

/* Variables and functions */
 struct pppol2tp_session* FUNC0 (struct l2tp_session*) ; 
 struct sock* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static struct sock *FUNC5(struct l2tp_session *session)
{
	struct pppol2tp_session *ps = FUNC0(session);
	struct sock *sk;

	FUNC2();
	sk = FUNC1(ps->sk);
	if (sk)
		FUNC4(sk);
	FUNC3();

	return sk;
}