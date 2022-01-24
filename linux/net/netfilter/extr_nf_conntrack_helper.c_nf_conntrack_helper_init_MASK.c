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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  helper_extend ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_ct_helper_hash ; 
 int nf_ct_helper_hsize ; 
 int /*<<< orphan*/  nf_ct_nat_helpers ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(void)
{
	int ret;
	nf_ct_helper_hsize = 1; /* gets rounded up to use one page */
	nf_ct_helper_hash =
		FUNC2(&nf_ct_helper_hsize, 0);
	if (!nf_ct_helper_hash)
		return -ENOMEM;

	ret = FUNC3(&helper_extend);
	if (ret < 0) {
		FUNC4("nf_ct_helper: Unable to register helper extension.\n");
		goto out_extend;
	}

	FUNC0(&nf_ct_nat_helpers);
	return 0;
out_extend:
	FUNC1(nf_ct_helper_hash);
	return ret;
}