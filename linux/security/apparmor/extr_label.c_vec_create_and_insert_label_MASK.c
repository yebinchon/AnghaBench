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
struct aa_profile {int /*<<< orphan*/  label; } ;
struct aa_labelset {int /*<<< orphan*/  lock; } ;
struct aa_label {int /*<<< orphan*/ * vec; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct aa_label* FUNC1 (struct aa_labelset*,struct aa_label*,int) ; 
 struct aa_label* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_profile*) ; 
 struct aa_label* FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_label*,struct aa_label*) ; 
 struct aa_labelset* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct aa_label *FUNC9(struct aa_profile **vec,
						    int len, gfp_t gfp)
{
	struct aa_label *label = NULL;
	struct aa_labelset *ls;
	unsigned long flags;
	struct aa_label *new;
	int i;

	FUNC0(!vec);

	if (len == 1)
		return FUNC2(&vec[0]->label);

	ls = FUNC6(&vec[len - 1]->label);

	/* TODO: enable when read side is lockless
	 * check if label exists before taking locks
	 */
	new = FUNC4(len, NULL, gfp);
	if (!new)
		return NULL;

	for (i = 0; i < len; i++)
		new->vec[i] = FUNC3(vec[i]);

	FUNC7(&ls->lock, flags);
	label = FUNC1(ls, new, false);
	FUNC8(&ls->lock, flags);
	FUNC5(label, new);

	return label;
}