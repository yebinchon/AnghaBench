#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_refcnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  inet_num; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

void FUNC4(struct sock *sk, long timeout)
{
	FUNC1("ping_close(sk=%p,sk->num=%u)\n",
		 FUNC0(sk), FUNC0(sk)->inet_num);
	FUNC1("isk->refcnt = %d\n", FUNC2(&sk->sk_refcnt));

	FUNC3(sk);
}