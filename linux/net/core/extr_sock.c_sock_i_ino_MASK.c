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
struct sock {int /*<<< orphan*/  sk_callback_lock; scalar_t__ sk_socket; } ;
struct TYPE_2__ {unsigned long i_ino; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

unsigned long FUNC3(struct sock *sk)
{
	unsigned long ino;

	FUNC1(&sk->sk_callback_lock);
	ino = sk->sk_socket ? FUNC0(sk->sk_socket)->i_ino : 0;
	FUNC2(&sk->sk_callback_lock);
	return ino;
}