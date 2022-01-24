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
struct sock_xprt {int /*<<< orphan*/  recv_mutex; int /*<<< orphan*/  xprt; int /*<<< orphan*/  xprt_err; int /*<<< orphan*/  sock_state; int /*<<< orphan*/ * sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_SOCK_WAKE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct sock_xprt *transport)
{
	int sockerr;

	if (!FUNC3(XPRT_SOCK_WAKE_ERROR, &transport->sock_state))
		return;
	FUNC0(&transport->recv_mutex);
	if (transport->sock == NULL)
		goto out;
	if (!FUNC2(XPRT_SOCK_WAKE_ERROR, &transport->sock_state))
		goto out;
	sockerr = FUNC4(&transport->xprt_err, 0);
	if (sockerr < 0)
		FUNC5(&transport->xprt, sockerr);
out:
	FUNC1(&transport->recv_mutex);
}