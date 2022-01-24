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
struct aa_label {scalar_t__ size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct aa_label* FUNC1 (struct aa_label*) ; 
 struct aa_label* FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*,struct aa_label*) ; 
 struct aa_label* FUNC5 (struct aa_label*,struct aa_label*,struct aa_label*) ; 

struct aa_label *FUNC6(struct aa_label *a, struct aa_label *b,
				gfp_t gfp)
{
	struct aa_label *label = NULL;

	FUNC0(!a);
	FUNC0(!b);

	if (a == b)
		return FUNC1(a);

	/* TODO: enable when read side is lockless
	 * check if label exists before taking locks
	if (!label_is_stale(a) && !label_is_stale(b))
		label = aa_label_find_merge(a, b);
	*/

	if (!label) {
		struct aa_label *new;

		a = FUNC1(a);
		b = FUNC1(b);

		/* could use label_merge_len(a, b), but requires double
		 * comparison for small savings
		 */
		new = FUNC2(a->size + b->size, NULL, gfp);
		if (!new)
			goto out;

		label = FUNC5(new, a, b);
		FUNC4(label, new);
out:
		FUNC3(a);
		FUNC3(b);
	}

	return label;
}