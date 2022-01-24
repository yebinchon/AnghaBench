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
struct vsock_sock {int /*<<< orphan*/  accept_queue; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct vsock_sock* FUNC2 (struct sock*) ; 

void FUNC3(struct sock *listener, struct sock *connected)
{
	struct vsock_sock *vlistener;
	struct vsock_sock *vconnected;

	vlistener = FUNC2(listener);
	vconnected = FUNC2(connected);

	FUNC1(connected);
	FUNC1(listener);
	FUNC0(&vconnected->accept_queue, &vlistener->accept_queue);
}