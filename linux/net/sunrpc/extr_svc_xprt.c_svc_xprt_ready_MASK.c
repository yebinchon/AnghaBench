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
struct svc_xprt {TYPE_1__* xpt_ops; int /*<<< orphan*/  xpt_flags; } ;
struct TYPE_2__ {scalar_t__ (* xpo_has_wspace ) (struct svc_xprt*) ;} ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  XPT_CONN ; 
 int /*<<< orphan*/  XPT_DATA ; 
 int /*<<< orphan*/  XPT_DEFERRED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct svc_xprt*) ; 
 scalar_t__ FUNC4 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_xprt*) ; 

__attribute__((used)) static bool FUNC6(struct svc_xprt *xprt)
{
	unsigned long xpt_flags;

	/*
	 * If another cpu has recently updated xpt_flags,
	 * sk_sock->flags, xpt_reserved, or xpt_nr_rqsts, we need to
	 * know about it; otherwise it's possible that both that cpu and
	 * this one could call svc_xprt_enqueue() without either
	 * svc_xprt_enqueue() recognizing that the conditions below
	 * are satisfied, and we could stall indefinitely:
	 */
	FUNC2();
	xpt_flags = FUNC1(xprt->xpt_flags);

	if (xpt_flags & (FUNC0(XPT_CONN) | FUNC0(XPT_CLOSE)))
		return true;
	if (xpt_flags & (FUNC0(XPT_DATA) | FUNC0(XPT_DEFERRED))) {
		if (xprt->xpt_ops->xpo_has_wspace(xprt) &&
		    FUNC4(xprt))
			return true;
		FUNC5(xprt);
		return false;
	}
	return false;
}