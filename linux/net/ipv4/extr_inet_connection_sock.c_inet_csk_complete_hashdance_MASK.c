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
struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  icsk_accept_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,struct request_sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

struct sock *FUNC6(struct sock *sk, struct sock *child,
					 struct request_sock *req, bool own_req)
{
	if (own_req) {
		FUNC3(sk, req);
		FUNC4(&FUNC1(sk)->icsk_accept_queue, req);
		if (FUNC2(sk, req, child))
			return child;
	}
	/* Too bad, another child took ownership of the request, undo. */
	FUNC0(child);
	FUNC5(child);
	return NULL;
}