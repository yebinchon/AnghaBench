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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_selector {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  family; } ;
struct xfrm_sec_ctx {int dummy; } ;
struct xfrm_policy {scalar_t__ pos; int /*<<< orphan*/  security; } ;
struct xfrm_pol_inexact_candidates {struct hlist_head** res; } ;
struct xfrm_pol_inexact_bin {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hlist_head**) ; 
 struct xfrm_policy* FUNC1 (struct hlist_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct xfrm_selector*,struct xfrm_sec_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_policy*,int) ; 
 struct hlist_head* FUNC3 (struct net*,struct xfrm_selector*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_pol_inexact_candidates*,struct xfrm_pol_inexact_bin*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct xfrm_pol_inexact_bin* FUNC9 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_pol_inexact_bin*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_policy*) ; 

struct xfrm_policy *FUNC12(struct net *net, u32 mark, u32 if_id,
					  u8 type, int dir,
					  struct xfrm_selector *sel,
					  struct xfrm_sec_ctx *ctx, int delete,
					  int *err)
{
	struct xfrm_pol_inexact_bin *bin = NULL;
	struct xfrm_policy *pol, *ret = NULL;
	struct hlist_head *chain;

	*err = 0;
	FUNC5(&net->xfrm.xfrm_policy_lock);
	chain = FUNC3(net, sel, sel->family, dir);
	if (!chain) {
		struct xfrm_pol_inexact_candidates cand;
		int i;

		bin = FUNC9(net, type,
						 sel->family, dir, if_id);
		if (!bin) {
			FUNC6(&net->xfrm.xfrm_policy_lock);
			return NULL;
		}

		if (!FUNC8(&cand, bin,
							 &sel->saddr,
							 &sel->daddr)) {
			FUNC6(&net->xfrm.xfrm_policy_lock);
			return NULL;
		}

		pol = NULL;
		for (i = 0; i < FUNC0(cand.res); i++) {
			struct xfrm_policy *tmp;

			tmp = FUNC1(cand.res[i], mark,
						      if_id, type, dir,
						      sel, ctx);
			if (!tmp)
				continue;

			if (!pol || tmp->pos < pol->pos)
				pol = tmp;
		}
	} else {
		pol = FUNC1(chain, mark, if_id, type, dir,
					      sel, ctx);
	}

	if (pol) {
		FUNC7(pol);
		if (delete) {
			*err = FUNC4(pol->security);
			if (*err) {
				FUNC6(&net->xfrm.xfrm_policy_lock);
				return pol;
			}
			FUNC2(pol, dir);
		}
		ret = pol;
	}
	FUNC6(&net->xfrm.xfrm_policy_lock);

	if (ret && delete)
		FUNC11(ret);
	if (bin && delete)
		FUNC10(bin);
	return ret;
}