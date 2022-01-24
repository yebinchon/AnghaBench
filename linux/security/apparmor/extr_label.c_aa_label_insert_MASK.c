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
 struct aa_label* FUNC1 (struct aa_label*) ; 
 struct aa_label* FUNC2 (struct aa_labelset*,struct aa_label*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

struct aa_label *FUNC8(struct aa_labelset *ls, struct aa_label *label)
{
	struct aa_label *l;
	unsigned long flags;

	FUNC0(!ls);
	FUNC0(!label);

	/* check if label exists before taking lock */
	if (!FUNC3(label)) {
		FUNC4(&ls->lock, flags);
		l = FUNC1(label);
		FUNC5(&ls->lock, flags);
		if (l)
			return l;
	}

	FUNC6(&ls->lock, flags);
	l = FUNC2(ls, label, false);
	FUNC7(&ls->lock, flags);

	return l;
}