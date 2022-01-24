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
struct jffs2_tmp_dnode_info {TYPE_1__* fn; } ;
struct jffs2_sb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; scalar_t__ size; scalar_t__ ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ REF_UNCHECKED ; 
 int FUNC2 (struct jffs2_sb_info*,struct jffs2_tmp_dnode_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct jffs2_sb_info *c, struct jffs2_tmp_dnode_info *tn)
{
	int ret;

	FUNC0(FUNC6(tn->fn->raw));

	/* We only check the data CRC of unchecked nodes */
	if (FUNC5(tn->fn->raw) != REF_UNCHECKED)
		return 0;

	FUNC3("check node %#04x-%#04x, phys offs %#08x\n",
		      tn->fn->ofs, tn->fn->ofs + tn->fn->size, FUNC7(tn->fn->raw));

	ret = FUNC2(c, tn);
	if (FUNC8(ret < 0)) {
		FUNC1("check_node_data() returned error: %d.\n",
			ret);
	} else if (FUNC8(ret > 0)) {
		FUNC3("CRC error, mark it obsolete.\n");
		FUNC4(c, tn->fn->raw);
	}

	return ret;
}