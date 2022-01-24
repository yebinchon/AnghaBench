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
struct sock {int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct rfcomm_dlc {struct sock* owner; } ;
struct TYPE_2__ {struct rfcomm_dlc* dlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rfcomm_dlc*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct rfcomm_dlc *d = FUNC4(sk)->dlc;

	FUNC0("sk %p dlc %p", sk, d);

	FUNC5(&sk->sk_receive_queue);
	FUNC5(&sk->sk_write_queue);

	FUNC1(d);
	FUNC4(sk)->dlc = NULL;

	/* Detach DLC if it's owned by this socket */
	if (d->owner == sk)
		d->owner = NULL;
	FUNC3(d);

	FUNC2(d);
}