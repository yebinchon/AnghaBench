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
struct aa_labelset {int /*<<< orphan*/  lock; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct aa_label* FUNC1 (struct aa_profile**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct aa_labelset* FUNC4 (struct aa_profile**,int) ; 

__attribute__((used)) static struct aa_label *FUNC5(struct aa_profile **vec, int n)
{
	struct aa_labelset *ls;
	struct aa_label *label;
	unsigned long flags;

	FUNC0(!vec);
	FUNC0(!*vec);
	FUNC0(n <= 0);

	ls = FUNC4(vec, n);
	FUNC2(&ls->lock, flags);
	label = FUNC1(vec, n);
	FUNC3(&ls->lock, flags);

	return label;
}