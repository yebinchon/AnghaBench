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
struct svc_xprt {int /*<<< orphan*/  xpt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_BUSY ; 
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_xprt*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct svc_xprt *xprt)
{
	FUNC0(XPT_CLOSE, &xprt->xpt_flags);
	if (FUNC2(XPT_BUSY, &xprt->xpt_flags))
		/* someone else will have to effect the close */
		return;
	/*
	 * We expect svc_close_xprt() to work even when no threads are
	 * running (e.g., while configuring the server before starting
	 * any threads), so if the transport isn't busy, we delete
	 * it ourself:
	 */
	FUNC1(xprt);
}