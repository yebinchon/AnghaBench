#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfrm_state {struct ipcomp_data* data; TYPE_1__* calg; scalar_t__ encap; } ;
struct TYPE_5__ {int /*<<< orphan*/  threshold; } ;
struct TYPE_6__ {TYPE_2__ comp; } ;
struct xfrm_algo_desc {TYPE_3__ uinfo; } ;
struct ipcomp_data {int /*<<< orphan*/  threshold; int /*<<< orphan*/  tfms; } ;
struct TYPE_4__ {int /*<<< orphan*/  alg_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipcomp_data*) ; 
 int /*<<< orphan*/  ipcomp_resource_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct ipcomp_data*) ; 
 struct ipcomp_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct xfrm_algo_desc* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct xfrm_state *x)
{
	int err;
	struct ipcomp_data *ipcd;
	struct xfrm_algo_desc *calg_desc;

	err = -EINVAL;
	if (!x->calg)
		goto out;

	if (x->encap)
		goto out;

	err = -ENOMEM;
	ipcd = FUNC5(sizeof(*ipcd), GFP_KERNEL);
	if (!ipcd)
		goto out;

	FUNC6(&ipcomp_resource_mutex);
	if (!FUNC1())
		goto error;

	ipcd->tfms = FUNC2(x->calg->alg_name);
	if (!ipcd->tfms)
		goto error;
	FUNC7(&ipcomp_resource_mutex);

	calg_desc = FUNC8(x->calg->alg_name, 0);
	FUNC0(!calg_desc);
	ipcd->threshold = calg_desc->uinfo.comp.threshold;
	x->data = ipcd;
	err = 0;
out:
	return err;

error:
	FUNC3(ipcd);
	FUNC7(&ipcomp_resource_mutex);
	FUNC4(ipcd);
	goto out;
}