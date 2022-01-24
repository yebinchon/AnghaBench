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
struct xfrm_policy {int /*<<< orphan*/  if_id; int /*<<< orphan*/  type; int /*<<< orphan*/  family; } ;
struct xfrm_pol_inexact_key {int /*<<< orphan*/  net; int /*<<< orphan*/  if_id; int /*<<< orphan*/  dir; int /*<<< orphan*/  type; int /*<<< orphan*/  family; } ;
struct xfrm_pol_inexact_bin {int /*<<< orphan*/  inexact_bins; int /*<<< orphan*/  head; struct xfrm_pol_inexact_key k; int /*<<< orphan*/  count; void* root_s; void* root_d; int /*<<< orphan*/  hhead; } ;
struct TYPE_2__ {int /*<<< orphan*/  inexact_bins; int /*<<< orphan*/  xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct xfrm_pol_inexact_bin*) ; 
 void* RB_ROOT ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_pol_inexact_bin*) ; 
 struct xfrm_pol_inexact_bin* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct xfrm_pol_inexact_bin* FUNC6 (int /*<<< orphan*/ *,struct xfrm_pol_inexact_key*,int /*<<< orphan*/ ) ; 
 struct xfrm_pol_inexact_bin* FUNC7 (int /*<<< orphan*/ *,struct xfrm_pol_inexact_key*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  xfrm_pol_inexact_params ; 
 int /*<<< orphan*/  xfrm_policy_inexact_table ; 
 struct net* FUNC10 (struct xfrm_policy const*) ; 

__attribute__((used)) static struct xfrm_pol_inexact_bin *
FUNC11(const struct xfrm_policy *pol, u8 dir)
{
	struct xfrm_pol_inexact_bin *bin, *prev;
	struct xfrm_pol_inexact_key k = {
		.family = pol->family,
		.type = pol->type,
		.dir = dir,
		.if_id = pol->if_id,
	};
	struct net *net = FUNC10(pol);

	FUNC5(&net->xfrm.xfrm_policy_lock);

	FUNC9(&k.net, net);
	bin = FUNC6(&xfrm_policy_inexact_table, &k,
				     xfrm_pol_inexact_params);
	if (bin)
		return bin;

	bin = FUNC3(sizeof(*bin), GFP_ATOMIC);
	if (!bin)
		return NULL;

	bin->k = k;
	FUNC0(&bin->hhead);
	bin->root_d = RB_ROOT;
	bin->root_s = RB_ROOT;
	FUNC8(&bin->count);

	prev = FUNC7(&xfrm_policy_inexact_table,
						&bin->k, &bin->head,
						xfrm_pol_inexact_params);
	if (!prev) {
		FUNC4(&bin->inexact_bins, &net->xfrm.inexact_bins);
		return bin;
	}

	FUNC2(bin);

	return FUNC1(prev) ? NULL : prev;
}