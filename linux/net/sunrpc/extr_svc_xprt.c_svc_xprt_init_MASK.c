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
struct svc_xprt_class {int /*<<< orphan*/  xcl_ops; } ;
struct svc_xprt {int /*<<< orphan*/  xpt_remotebuf; int /*<<< orphan*/  xpt_net; int /*<<< orphan*/  xpt_flags; int /*<<< orphan*/  xpt_lock; int /*<<< orphan*/  xpt_mutex; int /*<<< orphan*/  xpt_users; int /*<<< orphan*/  xpt_deferred; int /*<<< orphan*/  xpt_ready; int /*<<< orphan*/  xpt_list; struct svc_serv* xpt_server; int /*<<< orphan*/  xpt_ref; int /*<<< orphan*/  xpt_ops; struct svc_xprt_class* xpt_class; } ;
struct svc_serv {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XPT_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_xprt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(struct net *net, struct svc_xprt_class *xcl,
		   struct svc_xprt *xprt, struct svc_serv *serv)
{
	FUNC3(xprt, 0, sizeof(*xprt));
	xprt->xpt_class = xcl;
	xprt->xpt_ops = xcl->xcl_ops;
	FUNC2(&xprt->xpt_ref);
	xprt->xpt_server = serv;
	FUNC0(&xprt->xpt_list);
	FUNC0(&xprt->xpt_ready);
	FUNC0(&xprt->xpt_deferred);
	FUNC0(&xprt->xpt_users);
	FUNC4(&xprt->xpt_mutex);
	FUNC6(&xprt->xpt_lock);
	FUNC5(XPT_BUSY, &xprt->xpt_flags);
	xprt->xpt_net = FUNC1(net);
	FUNC7(xprt->xpt_remotebuf, "uninitialized");
}