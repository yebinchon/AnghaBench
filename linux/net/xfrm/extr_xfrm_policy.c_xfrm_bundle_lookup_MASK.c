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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xfrm_policy {int dummy; } ;
struct xfrm_flo {int /*<<< orphan*/  dst_orig; } ;
struct xfrm_dst {int num_pols; int num_xfrms; int /*<<< orphan*/  pols; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EREMOTE ; 
 struct xfrm_dst* FUNC0 (struct xfrm_dst*) ; 
 struct xfrm_dst* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct xfrm_dst*) ; 
 int /*<<< orphan*/  LINUX_MIB_XFRMOUTPOLERROR ; 
 int FUNC3 (struct xfrm_dst*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int XFRM_POLICY_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xfrm_policy**,int) ; 
 struct xfrm_dst* FUNC6 (struct net*,struct xfrm_flo*,struct flowi const*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct flowi const*,int /*<<< orphan*/ ,struct xfrm_policy**,int*,int*) ; 
 struct xfrm_policy* FUNC8 (struct net*,struct flowi const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfrm_policy**,int) ; 
 struct xfrm_dst* FUNC10 (struct xfrm_policy**,int,struct flowi const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xfrm_dst *FUNC11(struct net *net,
					   const struct flowi *fl,
					   u16 family, u8 dir,
					   struct xfrm_flo *xflo, u32 if_id)
{
	struct xfrm_policy *pols[XFRM_POLICY_TYPE_MAX];
	int num_pols = 0, num_xfrms = 0, err;
	struct xfrm_dst *xdst;

	/* Resolve policies to use if we couldn't get them from
	 * previous cache entry */
	num_pols = 1;
	pols[0] = FUNC8(net, fl, family, dir, if_id);
	err = FUNC7(fl, family, pols,
					   &num_pols, &num_xfrms);
	if (err < 0)
		goto inc_error;
	if (num_pols == 0)
		return NULL;
	if (num_xfrms <= 0)
		goto make_dummy_bundle;

	xdst = FUNC10(pols, num_pols, fl, family,
					      xflo->dst_orig);
	if (FUNC2(xdst)) {
		err = FUNC3(xdst);
		if (err == -EREMOTE) {
			FUNC9(pols, num_pols);
			return NULL;
		}

		if (err != -EAGAIN)
			goto error;
		goto make_dummy_bundle;
	} else if (xdst == NULL) {
		num_xfrms = 0;
		goto make_dummy_bundle;
	}

	return xdst;

make_dummy_bundle:
	/* We found policies, but there's no bundles to instantiate:
	 * either because the policy blocks, has no transformations or
	 * we could not build template (no xfrm_states).*/
	xdst = FUNC6(net, xflo, fl, num_xfrms, family);
	if (FUNC2(xdst)) {
		FUNC9(pols, num_pols);
		return FUNC0(xdst);
	}
	xdst->num_pols = num_pols;
	xdst->num_xfrms = num_xfrms;
	FUNC5(xdst->pols, pols, sizeof(struct xfrm_policy *) * num_pols);

	return xdst;

inc_error:
	FUNC4(net, LINUX_MIB_XFRMOUTPOLERROR);
error:
	FUNC9(pols, num_pols);
	return FUNC1(err);
}