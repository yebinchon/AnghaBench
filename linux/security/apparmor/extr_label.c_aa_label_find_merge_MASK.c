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
struct aa_labelset {int /*<<< orphan*/  lock; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct aa_label* FUNC1 (struct aa_labelset*,struct aa_label*,struct aa_label*) ; 
 struct aa_label* FUNC2 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 scalar_t__ FUNC4 (struct aa_label*) ; 
 struct aa_labelset* FUNC5 (struct aa_label*,struct aa_label*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

struct aa_label *FUNC8(struct aa_label *a, struct aa_label *b)
{
	struct aa_labelset *ls;
	struct aa_label *label, *ar = NULL, *br = NULL;
	unsigned long flags;

	FUNC0(!a);
	FUNC0(!b);

	if (FUNC4(a))
		a = ar = FUNC2(a);
	if (FUNC4(b))
		b = br = FUNC2(b);
	ls = FUNC5(a, b);
	FUNC6(&ls->lock, flags);
	label = FUNC1(ls, a, b);
	FUNC7(&ls->lock, flags);
	FUNC3(ar);
	FUNC3(br);

	return label;
}