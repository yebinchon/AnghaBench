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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  cork; } ;
struct TYPE_3__ {int /*<<< orphan*/  cork; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

void FUNC3(struct sock *sk)
{
	FUNC0(sk, &sk->sk_write_queue,
				   &FUNC2(sk)->cork, &FUNC1(sk)->cork);
}