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
struct svc_xprt {int /*<<< orphan*/  xpt_lock; struct ip_map* xpt_auth_cache; int /*<<< orphan*/  xpt_net; int /*<<< orphan*/  xpt_flags; } ;
struct sunrpc_net {int /*<<< orphan*/  ip_map_cache; } ;
struct ip_map {int /*<<< orphan*/  h; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_CACHE_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sunrpc_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct ip_map *
FUNC7(struct svc_xprt *xprt)
{
	struct ip_map *ipm = NULL;
	struct sunrpc_net *sn;

	if (FUNC6(XPT_CACHE_AUTH, &xprt->xpt_flags)) {
		FUNC4(&xprt->xpt_lock);
		ipm = xprt->xpt_auth_cache;
		if (ipm != NULL) {
			sn = FUNC3(xprt->xpt_net, sunrpc_net_id);
			if (FUNC1(sn->ip_map_cache, &ipm->h)) {
				/*
				 * The entry has been invalidated since it was
				 * remembered, e.g. by a second mount from the
				 * same IP address.
				 */
				xprt->xpt_auth_cache = NULL;
				FUNC5(&xprt->xpt_lock);
				FUNC2(&ipm->h, sn->ip_map_cache);
				return NULL;
			}
			FUNC0(&ipm->h);
		}
		FUNC5(&xprt->xpt_lock);
	}
	return ipm;
}