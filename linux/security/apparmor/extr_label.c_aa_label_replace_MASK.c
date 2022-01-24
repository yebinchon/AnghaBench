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
struct aa_label {scalar_t__ proxy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_label*,struct aa_label*) ; 
 struct aa_label* FUNC1 (struct aa_labelset*,struct aa_label*,int) ; 
 int FUNC2 (struct aa_label*,struct aa_label*) ; 
 int FUNC3 (struct aa_label*,struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*,struct aa_label*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_label*) ; 
 scalar_t__ FUNC6 (struct aa_label*) ; 
 struct aa_labelset* FUNC7 (struct aa_label*) ; 
 scalar_t__ FUNC8 (struct aa_label*,struct aa_label*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC11(struct aa_label *old, struct aa_label *new)
{
	unsigned long flags;
	bool res;

	if (FUNC8(old, new) && FUNC6(old) == FUNC6(new)) {
		FUNC9(&FUNC7(old)->lock, flags);
		if (old->proxy != new->proxy)
			FUNC4(old, new);
		else
			FUNC0(old, new);
		res = FUNC3(old, new);
		FUNC10(&FUNC7(old)->lock, flags);
	} else {
		struct aa_label *l;
		struct aa_labelset *ls = FUNC7(old);

		FUNC9(&ls->lock, flags);
		res = FUNC2(old, new);
		if (FUNC6(old) != FUNC6(new)) {
			FUNC10(&ls->lock, flags);
			ls = FUNC7(new);
			FUNC9(&ls->lock, flags);
		}
		l = FUNC1(ls, new, true);
		res = (l == new);
		FUNC10(&ls->lock, flags);
		FUNC5(l);
	}

	return res;
}