#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct jffs2_sb_info {scalar_t__ sector_size; int /*<<< orphan*/  free_size; int /*<<< orphan*/  dirty_size; } ;
struct jffs2_eraseblock {scalar_t__ free_size; scalar_t__ offset; int /*<<< orphan*/  dirty_size; TYPE_1__* last_node; int /*<<< orphan*/  wasted_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  __totlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ REF_OBSOLETE ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_sb_info*,struct jffs2_eraseblock*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb,
			   uint32_t size)
{
	if (!size)
		return 0;
	if (FUNC4(size > jeb->free_size)) {
		FUNC2("Dirty space 0x%x larger then free_size 0x%x (wasted 0x%x)\n",
			size, jeb->free_size, jeb->wasted_size);
		FUNC0();
	}
	/* REF_EMPTY_NODE is !obsolete, so that works OK */
	if (jeb->last_node && FUNC3(jeb->last_node)) {
#ifdef TEST_TOTLEN
		jeb->last_node->__totlen += size;
#endif
		c->dirty_size += size;
		c->free_size -= size;
		jeb->dirty_size += size;
		jeb->free_size -= size;
	} else {
		uint32_t ofs = jeb->offset + c->sector_size - jeb->free_size;
		ofs |= REF_OBSOLETE;

		FUNC1(c, jeb, ofs, size, NULL);
	}

	return 0;
}