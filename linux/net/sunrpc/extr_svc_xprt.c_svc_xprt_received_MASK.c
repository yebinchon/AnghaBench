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
struct svc_xprt {TYPE_2__* xpt_server; int /*<<< orphan*/  xpt_flags; } ;
struct TYPE_4__ {TYPE_1__* sv_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* svo_enqueue_xprt ) (struct svc_xprt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct svc_xprt*) ; 
 int /*<<< orphan*/  XPT_BUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct svc_xprt *xprt)
{
	if (!FUNC6(XPT_BUSY, &xprt->xpt_flags)) {
		FUNC0(1, "xprt=0x%p already busy!", xprt);
		return;
	}

	/* As soon as we clear busy, the xprt could be closed and
	 * 'put', so we need a reference to call svc_enqueue_xprt with:
	 */
	FUNC4(xprt);
	FUNC2();
	FUNC1(XPT_BUSY, &xprt->xpt_flags);
	xprt->xpt_server->sv_ops->svo_enqueue_xprt(xprt);
	FUNC5(xprt);
}