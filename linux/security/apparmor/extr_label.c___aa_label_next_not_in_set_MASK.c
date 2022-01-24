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
struct label_it {size_t i; size_t j; } ;
struct aa_profile {int dummy; } ;
struct aa_label {size_t size; struct aa_profile** vec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct aa_profile*,struct aa_profile*) ; 

struct aa_profile *FUNC2(struct label_it *I,
					      struct aa_label *set,
					      struct aa_label *sub)
{
	FUNC0(!set);
	FUNC0(!I);
	FUNC0(I->i < 0);
	FUNC0(I->i > set->size);
	FUNC0(!sub);
	FUNC0(I->j < 0);
	FUNC0(I->j > sub->size);

	while (I->j < sub->size && I->i < set->size) {
		int res = FUNC1(sub->vec[I->j], set->vec[I->i]);

		if (res == 0) {
			(I->j)++;
			(I->i)++;
		} else if (res > 0)
			(I->i)++;
		else
			return sub->vec[(I->j)++];
	}

	if (I->j < sub->size)
		return sub->vec[(I->j)++];

	return NULL;
}