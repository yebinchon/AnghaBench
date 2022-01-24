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
typedef  int /*<<< orphan*/  u16 ;
struct xfrm_state {int dummy; } ;
struct xfrm_policy {int /*<<< orphan*/  genid; } ;
struct xfrm_dst {int num_xfrms; int num_pols; int /*<<< orphan*/  policy_genid; int /*<<< orphan*/  pols; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct xfrm_dst* FUNC0 (struct dst_entry*) ; 
 struct xfrm_dst* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTBUNDLEGENERROR ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTPOLERROR ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int XFRM_MAX_DEPTH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xfrm_policy**,int) ; 
 struct dst_entry* FUNC6 (struct xfrm_policy*,struct xfrm_state**,struct xfrm_dst**,int,struct flowi const*,struct dst_entry*) ; 
 int FUNC7 (struct xfrm_policy**,int,struct flowi const*,struct xfrm_state**,int /*<<< orphan*/ ) ; 
 struct net* FUNC8 (struct xfrm_policy*) ; 

__attribute__((used)) static struct xfrm_dst *
FUNC9(struct xfrm_policy **pols, int num_pols,
			       const struct flowi *fl, u16 family,
			       struct dst_entry *dst_orig)
{
	struct net *net = FUNC8(pols[0]);
	struct xfrm_state *xfrm[XFRM_MAX_DEPTH];
	struct xfrm_dst *bundle[XFRM_MAX_DEPTH];
	struct xfrm_dst *xdst;
	struct dst_entry *dst;
	int err;

	/* Try to instantiate a bundle */
	err = FUNC7(pols, num_pols, fl, xfrm, family);
	if (err <= 0) {
		if (err == 0)
			return NULL;

		if (err != -EAGAIN)
			FUNC3(net, LINUX_MIB_XFRMOUTPOLERROR);
		return FUNC1(err);
	}

	dst = FUNC6(pols[0], xfrm, bundle, err, fl, dst_orig);
	if (FUNC2(dst)) {
		FUNC3(net, LINUX_MIB_XFRMOUTBUNDLEGENERROR);
		return FUNC0(dst);
	}

	xdst = (struct xfrm_dst *)dst;
	xdst->num_xfrms = err;
	xdst->num_pols = num_pols;
	FUNC5(xdst->pols, pols, sizeof(struct xfrm_policy *) * num_pols);
	xdst->policy_genid = FUNC4(&pols[0]->genid);

	return xdst;
}