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
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_4__ {int /*<<< orphan*/  inet_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  no_autobind; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

int FUNC3(struct sock *sk)
{
	FUNC2(sk);

	/* We may need to bind the socket. */
	if (!FUNC1(sk)->inet_num && !sk->sk_prot->no_autobind &&
	    FUNC0(sk))
		return -EAGAIN;

	return 0;
}