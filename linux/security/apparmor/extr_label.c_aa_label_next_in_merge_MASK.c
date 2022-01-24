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
					  struct aa_label *a,
					  struct aa_label *b)
{
	FUNC0(!a);
	FUNC0(!b);
	FUNC0(!I);
	FUNC0(I->i < 0);
	FUNC0(I->i > a->size);
	FUNC0(I->j < 0);
	FUNC0(I->j > b->size);

	if (I->i < a->size) {
		if (I->j < b->size) {
			int res = FUNC1(a->vec[I->i], b->vec[I->j]);

			if (res > 0)
				return b->vec[(I->j)++];
			if (res == 0)
				(I->j)++;
		}

		return a->vec[(I->i)++];
	}

	if (I->j < b->size)
		return b->vec[(I->j)++];

	return NULL;
}