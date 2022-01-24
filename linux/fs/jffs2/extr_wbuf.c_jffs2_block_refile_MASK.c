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
typedef  int uint32_t ;
struct jffs2_sb_info {int sector_size; int /*<<< orphan*/  dirty_size; int /*<<< orphan*/  wasted_size; int /*<<< orphan*/  nr_erasing_blocks; int /*<<< orphan*/  erase_pending_list; int /*<<< orphan*/  bad_used_list; struct jffs2_eraseblock* nextblock; } ;
struct jffs2_eraseblock {int offset; int free_size; int /*<<< orphan*/  dirty_size; int /*<<< orphan*/  wasted_size; int /*<<< orphan*/  list; scalar_t__ first_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int REFILE_NOTEMPTY ; 
 int REF_OBSOLETE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_sb_info*,struct jffs2_eraseblock*) ; 
 int /*<<< orphan*/  FUNC3 (struct jffs2_sb_info*,struct jffs2_eraseblock*) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct jffs2_sb_info*,struct jffs2_eraseblock*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct jffs2_sb_info*,struct jffs2_eraseblock*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb, int allow_empty)
{
	FUNC1(1, "About to refile bad block at %08x\n", jeb->offset);

	/* File the existing block on the bad_used_list.... */
	if (c->nextblock == jeb)
		c->nextblock = NULL;
	else /* Not sure this should ever happen... need more coffee */
		FUNC9(&jeb->list);
	if (jeb->first_node) {
		FUNC1(1, "Refiling block at %08x to bad_used_list\n",
			  jeb->offset);
		FUNC8(&jeb->list, &c->bad_used_list);
	} else {
		FUNC0(allow_empty == REFILE_NOTEMPTY);
		/* It has to have had some nodes or we couldn't be here */
		FUNC1(1, "Refiling block at %08x to erase_pending_list\n",
			  jeb->offset);
		FUNC8(&jeb->list, &c->erase_pending_list);
		c->nr_erasing_blocks++;
		FUNC5(c);
	}

	if (!FUNC7(c, jeb, 1)) {
		uint32_t oldfree = jeb->free_size;

		FUNC6(c, jeb, 
				    (jeb->offset+c->sector_size-oldfree) | REF_OBSOLETE,
				    oldfree, NULL);
		/* convert to wasted */
		c->wasted_size += oldfree;
		jeb->wasted_size += oldfree;
		c->dirty_size -= oldfree;
		jeb->dirty_size -= oldfree;
	}

	FUNC4(c);
	FUNC3(c,jeb);
	FUNC2(c, jeb);
}