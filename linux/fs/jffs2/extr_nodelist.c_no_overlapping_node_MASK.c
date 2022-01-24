#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct rb_root {int /*<<< orphan*/  rb_node; } ;
struct jffs2_sb_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  rb_right; } ;
struct jffs2_node_frag {TYPE_2__ rb; scalar_t__ size; scalar_t__ ofs; TYPE_1__* node; } ;
struct TYPE_5__ {scalar_t__ ofs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_node_frag*) ; 
 struct jffs2_node_frag* FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct jffs2_sb_info *c, struct rb_root *root,
		 	       struct jffs2_node_frag *newfrag,
			       struct jffs2_node_frag *this, uint32_t lastend)
{
	if (lastend < newfrag->node->ofs) {
		/* put a hole in before the new fragment */
		struct jffs2_node_frag *holefrag;

		holefrag= FUNC2(NULL, lastend, newfrag->node->ofs - lastend);
		if (FUNC5(!holefrag)) {
			FUNC1(newfrag);
			return -ENOMEM;
		}

		if (this) {
			/* By definition, the 'this' node has no right-hand child,
			   because there are no frags with offset greater than it.
			   So that's where we want to put the hole */
			FUNC0("add hole frag %#04x-%#04x on the right of the new frag.\n",
				holefrag->ofs, holefrag->ofs + holefrag->size);
			FUNC4(&holefrag->rb, &this->rb, &this->rb.rb_right);
		} else {
			FUNC0("Add hole frag %#04x-%#04x to the root of the tree.\n",
				holefrag->ofs, holefrag->ofs + holefrag->size);
			FUNC4(&holefrag->rb, NULL, &root->rb_node);
		}
		FUNC3(&holefrag->rb, root);
		this = holefrag;
	}

	if (this) {
		/* By definition, the 'this' node has no right-hand child,
		   because there are no frags with offset greater than it.
		   So that's where we want to put new fragment */
		FUNC0("add the new node at the right\n");
		FUNC4(&newfrag->rb, &this->rb, &this->rb.rb_right);
	} else {
		FUNC0("insert the new node at the root of the tree\n");
		FUNC4(&newfrag->rb, NULL, &root->rb_node);
	}
	FUNC3(&newfrag->rb, root);

	return 0;
}