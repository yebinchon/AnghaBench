#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {TYPE_1__* limits; int /*<<< orphan*/  mask; } ;
struct aa_profile {TYPE_2__ rlimits; } ;
struct aa_ext {void* pos; } ;
struct TYPE_3__ {int /*<<< orphan*/  rlim_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  AA_ARRAYEND ; 
 int /*<<< orphan*/  AA_STRUCT ; 
 int /*<<< orphan*/  AA_STRUCTEND ; 
 int RLIM_NLIMITS ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct aa_ext*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct aa_ext*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_ext*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_ext*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct aa_ext *e, struct aa_profile *profile)
{
	void *pos = e->pos;

	/* rlimits are optional */
	if (FUNC2(e, AA_STRUCT, "rlimits")) {
		int i, size;
		u32 tmp = 0;
		if (!FUNC3(e, &tmp, NULL))
			goto fail;
		profile->rlimits.mask = tmp;

		size = FUNC1(e, NULL);
		if (size > RLIM_NLIMITS)
			goto fail;
		for (i = 0; i < size; i++) {
			u64 tmp2 = 0;
			int a = FUNC0(i);
			if (!FUNC4(e, &tmp2, NULL))
				goto fail;
			profile->rlimits.limits[a].rlim_max = tmp2;
		}
		if (!FUNC2(e, AA_ARRAYEND, NULL))
			goto fail;
		if (!FUNC2(e, AA_STRUCTEND, NULL))
			goto fail;
	}
	return 1;

fail:
	e->pos = pos;
	return 0;
}