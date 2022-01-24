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
struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_4__ {scalar_t__ prior_ssthresh; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* init ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 TYPE_2__* FUNC5 (struct sock*) ; 

void FUNC6(struct sock *sk)
{
	const struct inet_connection_sock *icsk = FUNC2(sk);

	FUNC5(sk)->prior_ssthresh = 0;
	if (icsk->icsk_ca_ops->init)
		icsk->icsk_ca_ops->init(sk);
	if (FUNC4(sk))
		FUNC1(sk);
	else
		FUNC0(sk);
}