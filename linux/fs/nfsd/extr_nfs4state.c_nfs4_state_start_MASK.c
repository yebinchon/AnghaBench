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
 int /*<<< orphan*/  WQ_UNBOUND ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * laundry_wq ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(void)
{
	int ret;

	laundry_wq = FUNC0("%s", WQ_UNBOUND, 0, "nfsd4");
	if (laundry_wq == NULL) {
		ret = -ENOMEM;
		goto out;
	}
	ret = FUNC2();
	if (ret)
		goto out_free_laundry;

	FUNC3();
	return 0;

out_free_laundry:
	FUNC1(laundry_wq);
out:
	return ret;
}