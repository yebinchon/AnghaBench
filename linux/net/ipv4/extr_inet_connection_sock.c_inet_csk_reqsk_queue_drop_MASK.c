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
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct request_sock*) ; 
 scalar_t__ FUNC3 (struct request_sock*) ; 

void FUNC4(struct sock *sk, struct request_sock *req)
{
	if (FUNC3(req)) {
		FUNC2(&FUNC0(sk)->icsk_accept_queue, req);
		FUNC1(req);
	}
}