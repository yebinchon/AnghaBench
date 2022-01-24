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
struct sock_xprt {int /*<<< orphan*/  recv_worker; int /*<<< orphan*/  sock_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_SOCK_DATA_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xprtiod_workqueue ; 
 int /*<<< orphan*/  FUNC3 (struct sock_xprt*) ; 

__attribute__((used)) static void FUNC4(struct sock_xprt *transport)
{

	FUNC0(XPRT_SOCK_DATA_READY, &transport->sock_state);
	if (!FUNC3(transport))
		return;
	if (!FUNC2(XPRT_SOCK_DATA_READY, &transport->sock_state))
		FUNC1(xprtiod_workqueue, &transport->recv_worker);
}