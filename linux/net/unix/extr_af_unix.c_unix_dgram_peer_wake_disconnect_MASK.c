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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct sock* private; } ;
struct unix_sock {TYPE_1__ peer_wait; TYPE_2__ peer_wake; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct unix_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk,
					    struct sock *other)
{
	struct unix_sock *u, *u_other;

	u = FUNC3(sk);
	u_other = FUNC3(other);
	FUNC1(&u_other->peer_wait.lock);

	if (u->peer_wake.private == other) {
		FUNC0(&u_other->peer_wait, &u->peer_wake);
		u->peer_wake.private = NULL;
	}

	FUNC2(&u_other->peer_wait.lock);
}