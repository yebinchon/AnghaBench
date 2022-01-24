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
struct btree_head {int height; int /*<<< orphan*/  mempool; } ;
struct btree_geo {int no_pairs; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 unsigned long* FUNC1 (struct btree_geo*,unsigned long*,int) ; 
 int FUNC2 (struct btree_head*,struct btree_geo*,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC3 (struct btree_head*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct btree_geo*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btree_geo*,unsigned long*,int) ; 
 unsigned long* FUNC6 (struct btree_head*,struct btree_geo*,unsigned long*,int) ; 
 int FUNC7 (struct btree_geo*,unsigned long*,int) ; 
 int FUNC8 (struct btree_geo*,unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC9 (struct btree_geo*,unsigned long*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btree_geo*,unsigned long*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC12 (struct btree_geo*,unsigned long*,int,void*) ; 

__attribute__((used)) static int FUNC13(struct btree_head *head, struct btree_geo *geo,
			      unsigned long *key, void *val, int level,
			      gfp_t gfp)
{
	unsigned long *node;
	int i, pos, fill, err;

	FUNC0(!val);
	if (head->height < level) {
		err = FUNC2(head, geo, gfp);
		if (err)
			return err;
	}

retry:
	node = FUNC6(head, geo, key, level);
	pos = FUNC8(geo, node, key);
	fill = FUNC7(geo, node, pos);
	/* two identical keys are not allowed */
	FUNC0(pos < fill && FUNC9(geo, node, pos, key) == 0);

	if (fill == geo->no_pairs) {
		/* need to split node */
		unsigned long *new;

		new = FUNC3(head, gfp);
		if (!new)
			return -ENOMEM;
		err = FUNC13(head, geo,
				FUNC1(geo, node, fill / 2 - 1),
				new, level + 1, gfp);
		if (err) {
			FUNC10(new, head->mempool);
			return err;
		}
		for (i = 0; i < fill / 2; i++) {
			FUNC11(geo, new, i, FUNC1(geo, node, i));
			FUNC12(geo, new, i, FUNC4(geo, node, i));
			FUNC11(geo, node, i, FUNC1(geo, node, i + fill / 2));
			FUNC12(geo, node, i, FUNC4(geo, node, i + fill / 2));
			FUNC5(geo, node, i + fill / 2);
		}
		if (fill & 1) {
			FUNC11(geo, node, i, FUNC1(geo, node, fill - 1));
			FUNC12(geo, node, i, FUNC4(geo, node, fill - 1));
			FUNC5(geo, node, fill - 1);
		}
		goto retry;
	}
	FUNC0(fill >= geo->no_pairs);

	/* shift and insert */
	for (i = fill; i > pos; i--) {
		FUNC11(geo, node, i, FUNC1(geo, node, i - 1));
		FUNC12(geo, node, i, FUNC4(geo, node, i - 1));
	}
	FUNC11(geo, node, pos, key);
	FUNC12(geo, node, pos, val);

	return 0;
}