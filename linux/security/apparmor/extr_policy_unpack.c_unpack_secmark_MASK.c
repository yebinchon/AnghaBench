#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aa_secmark {int dummy; } ;
struct aa_profile {int secmark_count; TYPE_1__* secmark; } ;
struct aa_ext {void* pos; } ;
struct TYPE_4__ {struct TYPE_4__* label; int /*<<< orphan*/  deny; int /*<<< orphan*/  audit; } ;

/* Variables and functions */
 int /*<<< orphan*/  AA_ARRAYEND ; 
 int /*<<< orphan*/  AA_STRUCT ; 
 int /*<<< orphan*/  AA_STRUCTEND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct aa_ext*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct aa_ext*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_ext*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_ext*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct aa_ext *e, struct aa_profile *profile)
{
	void *pos = e->pos;
	int i, size;

	if (FUNC3(e, AA_STRUCT, "secmark")) {
		size = FUNC2(e, NULL);

		profile->secmark = FUNC0(size, sizeof(struct aa_secmark),
					   GFP_KERNEL);
		if (!profile->secmark)
			goto fail;

		profile->secmark_count = size;

		for (i = 0; i < size; i++) {
			if (!FUNC5(e, &profile->secmark[i].audit, NULL))
				goto fail;
			if (!FUNC5(e, &profile->secmark[i].deny, NULL))
				goto fail;
			if (!FUNC4(e, &profile->secmark[i].label, NULL))
				goto fail;
		}
		if (!FUNC3(e, AA_ARRAYEND, NULL))
			goto fail;
		if (!FUNC3(e, AA_STRUCTEND, NULL))
			goto fail;
	}

	return 1;

fail:
	if (profile->secmark) {
		for (i = 0; i < size; i++)
			FUNC1(profile->secmark[i].label);
		FUNC1(profile->secmark);
		profile->secmark_count = 0;
		profile->secmark = NULL;
	}

	e->pos = pos;
	return 0;
}