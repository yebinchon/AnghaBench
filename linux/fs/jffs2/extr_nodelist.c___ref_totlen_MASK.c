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
typedef  scalar_t__ uint32_t ;
struct jffs2_sb_info {size_t sector_size; struct jffs2_eraseblock* blocks; } ;
struct jffs2_raw_node_ref {size_t flash_offset; } ;
struct jffs2_eraseblock {scalar_t__ free_size; scalar_t__ offset; struct jffs2_raw_node_ref* last_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,struct jffs2_raw_node_ref*,scalar_t__,struct jffs2_raw_node_ref*,scalar_t__) ; 
 struct jffs2_raw_node_ref* FUNC2 (struct jffs2_raw_node_ref*) ; 
 scalar_t__ FUNC3 (struct jffs2_raw_node_ref*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline uint32_t FUNC5(struct jffs2_sb_info *c,
				    struct jffs2_eraseblock *jeb,
				    struct jffs2_raw_node_ref *ref)
{
	uint32_t ref_end;
	struct jffs2_raw_node_ref *next_ref = FUNC2(ref);

	if (next_ref)
		ref_end = FUNC3(next_ref);
	else {
		if (!jeb)
			jeb = &c->blocks[ref->flash_offset / c->sector_size];

		/* Last node in block. Use free_space */
		if (FUNC4(ref != jeb->last_node)) {
			FUNC1("ref %p @0x%08x is not jeb->last_node (%p @0x%08x)\n",
				ref, FUNC3(ref), jeb->last_node,
				jeb->last_node ?
				FUNC3(jeb->last_node) : 0);
			FUNC0();
		}
		ref_end = jeb->offset + c->sector_size - jeb->free_size;
	}
	return ref_end - FUNC3(ref);
}