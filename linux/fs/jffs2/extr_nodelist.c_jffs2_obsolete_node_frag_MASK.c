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
struct jffs2_sb_info {int dummy; } ;
struct jffs2_node_frag {TYPE_1__* node; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; int /*<<< orphan*/  frags; scalar_t__ size; scalar_t__ ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_node_frag*) ; 
 int /*<<< orphan*/  FUNC3 (struct jffs2_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct jffs2_sb_info *c,
				     struct jffs2_node_frag *this)
{
	if (this->node) {
		this->node->frags--;
		if (!this->node->frags) {
			/* The node has no valid frags left. It's totally obsoleted */
			FUNC0("marking old node @0x%08x (0x%04x-0x%04x) obsolete\n",
				FUNC5(this->node->raw), this->node->ofs, this->node->ofs+this->node->size);
			FUNC3(c, this->node->raw);
			FUNC1(this->node);
		} else {
			FUNC0("marking old node @0x%08x (0x%04x-0x%04x) REF_NORMAL. frags is %d\n",
				FUNC5(this->node->raw), this->node->ofs, this->node->ofs+this->node->size, this->node->frags);
			FUNC4(this->node->raw);
		}

	}
	FUNC2(this);
}