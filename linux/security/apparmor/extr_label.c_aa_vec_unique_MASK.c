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
struct aa_profile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VEC_FLAG_TERMINATE ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*) ; 
 int FUNC2 (struct aa_profile*,struct aa_profile*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_profile**,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sort_cmp ; 
 int FUNC4 (struct aa_profile**,int) ; 

int FUNC5(struct aa_profile **vec, int n, int flags)
{
	int i, dups = 0;

	FUNC0(n < 1);
	FUNC0(!vec);

	/* vecs are usually small and inorder, have a fallback for larger */
	if (n > 8) {
		FUNC3(vec, n, sizeof(struct aa_profile *), sort_cmp, NULL);
		dups = FUNC4(vec, n);
		goto out;
	}

	/* insertion sort + unique in one */
	for (i = 1; i < n; i++) {
		struct aa_profile *tmp = vec[i];
		int pos, j;

		for (pos = i - 1 - dups; pos >= 0; pos--) {
			int res = FUNC2(vec[pos], tmp);

			if (res == 0) {
				/* drop duplicate entry */
				FUNC1(tmp);
				dups++;
				goto continue_outer;
			} else if (res < 0)
				break;
		}
		/* pos is at entry < tmp, or index -1. Set to insert pos */
		pos++;

		for (j = i - dups; j > pos; j--)
			vec[j] = vec[j - 1];
		vec[pos] = tmp;
continue_outer:
		;
	}

	FUNC0(dups < 0);

out:
	if (flags & VEC_FLAG_TERMINATE)
		vec[n - dups] = NULL;

	return dups;
}