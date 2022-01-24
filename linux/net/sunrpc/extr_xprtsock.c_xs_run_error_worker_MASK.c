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
struct sock_xprt {int /*<<< orphan*/  error_worker; int /*<<< orphan*/  sock_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xprtiod_workqueue ; 

__attribute__((used)) static void FUNC2(struct sock_xprt *transport, unsigned int nr)
{
	FUNC1(nr, &transport->sock_state);
	FUNC0(xprtiod_workqueue, &transport->error_worker);
}