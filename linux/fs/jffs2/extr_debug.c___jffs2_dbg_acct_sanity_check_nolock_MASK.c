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
struct jffs2_sb_info {scalar_t__ sector_size; scalar_t__ used_size; scalar_t__ dirty_size; scalar_t__ free_size; scalar_t__ erasing_size; scalar_t__ bad_size; scalar_t__ wasted_size; scalar_t__ unchecked_size; scalar_t__ flash_size; } ;
struct jffs2_eraseblock {scalar_t__ used_size; scalar_t__ dirty_size; scalar_t__ free_size; scalar_t__ wasted_size; scalar_t__ unchecked_size; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int) ; 

void
FUNC3(struct jffs2_sb_info *c,
				     struct jffs2_eraseblock *jeb)
{
	if (FUNC2(jeb && jeb->used_size + jeb->dirty_size +
			jeb->free_size + jeb->wasted_size +
			jeb->unchecked_size != c->sector_size)) {
		FUNC1("eeep, space accounting for block at 0x%08x is screwed.\n", jeb->offset);
		FUNC1("free %#08x + dirty %#08x + used %#08x + wasted %#08x + unchecked %#08x != total %#08x.\n",
			jeb->free_size, jeb->dirty_size, jeb->used_size,
			jeb->wasted_size, jeb->unchecked_size, c->sector_size);
		FUNC0();
	}

	if (FUNC2(c->used_size + c->dirty_size + c->free_size + c->erasing_size + c->bad_size
				+ c->wasted_size + c->unchecked_size != c->flash_size)) {
		FUNC1("eeep, space accounting superblock info is screwed.\n");
		FUNC1("free %#08x + dirty %#08x + used %#08x + erasing %#08x + bad %#08x + wasted %#08x + unchecked %#08x != total %#08x.\n",
			c->free_size, c->dirty_size, c->used_size, c->erasing_size, c->bad_size,
			c->wasted_size, c->unchecked_size, c->flash_size);
		FUNC0();
	}
}