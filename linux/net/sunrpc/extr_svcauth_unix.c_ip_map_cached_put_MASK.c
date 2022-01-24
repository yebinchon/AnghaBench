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
struct svc_xprt {int /*<<< orphan*/  xpt_net; int /*<<< orphan*/  xpt_lock; struct ip_map* xpt_auth_cache; int /*<<< orphan*/  xpt_flags; } ;
struct sunrpc_net {int /*<<< orphan*/  ip_map_cache; } ;
struct ip_map {int /*<<< orphan*/  h; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_CACHE_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sunrpc_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(struct svc_xprt *xprt, struct ip_map *ipm)
{
	if (FUNC4(XPT_CACHE_AUTH, &xprt->xpt_flags)) {
		FUNC2(&xprt->xpt_lock);
		if (xprt->xpt_auth_cache == NULL) {
			/* newly cached, keep the reference */
			xprt->xpt_auth_cache = ipm;
			ipm = NULL;
		}
		FUNC3(&xprt->xpt_lock);
	}
	if (ipm) {
		struct sunrpc_net *sn;

		sn = FUNC1(xprt->xpt_net, sunrpc_net_id);
		FUNC0(&ipm->h, sn->ip_map_cache);
	}
}