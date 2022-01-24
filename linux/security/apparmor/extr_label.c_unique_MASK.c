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
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*) ; 
 int FUNC2 (struct aa_profile*,struct aa_profile*) ; 

__attribute__((used)) static inline int FUNC3(struct aa_profile **vec, int n)
{
	int i, pos, dups = 0;

	FUNC0(n < 1);
	FUNC0(!vec);

	pos = 0;
	for (i = 1; i < n; i++) {
		int res = FUNC2(vec[pos], vec[i]);

		FUNC0(res > 0, "vec not sorted");
		if (res == 0) {
			/* drop duplicate */
			FUNC1(vec[i]);
			dups++;
			continue;
		}
		pos++;
		if (dups)
			vec[pos] = vec[i];
	}

	FUNC0(dups < 0);

	return dups;
}