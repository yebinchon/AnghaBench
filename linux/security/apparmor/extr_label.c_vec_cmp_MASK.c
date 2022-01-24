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
 int FUNC1 (struct aa_profile*,struct aa_profile*) ; 

__attribute__((used)) static int FUNC2(struct aa_profile **a, int an, struct aa_profile **b, int bn)
{
	int i;

	FUNC0(!a);
	FUNC0(!*a);
	FUNC0(!b);
	FUNC0(!*b);
	FUNC0(an <= 0);
	FUNC0(bn <= 0);

	for (i = 0; i < an && i < bn; i++) {
		int res = FUNC1(a[i], b[i]);

		if (res != 0)
			return res;
	}

	return an - bn;
}