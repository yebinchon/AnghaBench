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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct nfit_test {int num_dcr; int /*<<< orphan*/ * dimm_dev; scalar_t__ dcr_idx; TYPE_1__ pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfit_test*) ; 
 int /*<<< orphan*/  nfit_test_dimm ; 
 int /*<<< orphan*/  nfit_test_dimm_attribute_groups ; 
 int /*<<< orphan*/  put_dimms ; 

__attribute__((used)) static int FUNC2(struct nfit_test *t)
{
	int i;

	if (FUNC1(&t->pdev.dev, put_dimms, t))
		return -ENOMEM;
	for (i = 0; i < t->num_dcr; i++) {
		t->dimm_dev[i] = FUNC0(nfit_test_dimm,
				&t->pdev.dev, 0, NULL,
				nfit_test_dimm_attribute_groups,
				"test_dimm%d", i + t->dcr_idx);
		if (!t->dimm_dev[i])
			return -ENOMEM;
	}
	return 0;
}