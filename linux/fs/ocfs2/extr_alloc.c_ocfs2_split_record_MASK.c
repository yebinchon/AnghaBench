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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
typedef  enum ocfs2_split_type { ____Placeholder_ocfs2_split_type } ocfs2_split_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SPLIT_LEFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 
 int FUNC6 (struct ocfs2_extent_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct ocfs2_extent_rec*,struct ocfs2_extent_rec*) ; 
 struct ocfs2_extent_list* FUNC8 (struct ocfs2_path*) ; 

__attribute__((used)) static void FUNC9(struct ocfs2_extent_tree *et,
			       struct ocfs2_path *left_path,
			       struct ocfs2_path *right_path,
			       struct ocfs2_extent_rec *split_rec,
			       enum ocfs2_split_type split)
{
	int index;
	u32 cpos = FUNC1(split_rec->e_cpos);
	struct ocfs2_extent_list *left_el = NULL, *right_el, *insert_el, *el;
	struct ocfs2_extent_rec *rec, *tmprec;

	right_el = FUNC8(right_path);
	if (left_path)
		left_el = FUNC8(left_path);

	el = right_el;
	insert_el = right_el;
	index = FUNC6(el, cpos);
	if (index != -1) {
		if (index == 0 && left_path) {
			FUNC0(FUNC3(&el->l_recs[0]));

			/*
			 * This typically means that the record
			 * started in the left path but moved to the
			 * right as a result of rotation. We either
			 * move the existing record to the left, or we
			 * do the later insert there.
			 *
			 * In this case, the left path should always
			 * exist as the rotate code will have passed
			 * it back for a post-insert update.
			 */

			if (split == SPLIT_LEFT) {
				/*
				 * It's a left split. Since we know
				 * that the rotate code gave us an
				 * empty extent in the left path, we
				 * can just do the insert there.
				 */
				insert_el = left_el;
			} else {
				/*
				 * Right split - we have to move the
				 * existing record over to the left
				 * leaf. The insert will be into the
				 * newly created empty extent in the
				 * right leaf.
				 */
				tmprec = &right_el->l_recs[index];
				FUNC5(left_el, tmprec);
				el = left_el;

				FUNC2(tmprec, 0, sizeof(*tmprec));
				index = FUNC6(left_el, cpos);
				FUNC0(index == -1);
			}
		}
	} else {
		FUNC0(!left_path);
		FUNC0(!FUNC3(&left_el->l_recs[0]));
		/*
		 * Left path is easy - we can just allow the insert to
		 * happen.
		 */
		el = left_el;
		insert_el = left_el;
		index = FUNC6(el, cpos);
		FUNC0(index == -1);
	}

	rec = &el->l_recs[index];
	FUNC7(FUNC4(et->et_ci),
				split, rec, split_rec);
	FUNC5(insert_el, split_rec);
}