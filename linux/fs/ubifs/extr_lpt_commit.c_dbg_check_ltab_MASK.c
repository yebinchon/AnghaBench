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
struct ubifs_pnode {int dummy; } ;
struct ubifs_info {int lpt_first; int lpt_last; scalar_t__ nroot; int /*<<< orphan*/  main_lebs; } ;
struct ubifs_cnode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ubifs_pnode*) ; 
 int FUNC2 (struct ubifs_pnode*) ; 
 int /*<<< orphan*/  UBIFS_LPT_FANOUT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct ubifs_info*,struct ubifs_cnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*,int) ; 
 struct ubifs_pnode* FUNC9 (struct ubifs_info*,int) ; 

int FUNC10(struct ubifs_info *c)
{
	int lnum, err, i, cnt;

	if (!FUNC6(c))
		return 0;

	/* Bring the entire tree into memory */
	cnt = FUNC0(c->main_lebs, UBIFS_LPT_FANOUT);
	for (i = 0; i < cnt; i++) {
		struct ubifs_pnode *pnode;

		pnode = FUNC9(c, i);
		if (FUNC1(pnode))
			return FUNC2(pnode);
		FUNC3();
	}

	/* Check nodes */
	err = FUNC4(c, (struct ubifs_cnode *)c->nroot, 0, 0);
	if (err)
		return err;

	/* Check each LEB */
	for (lnum = c->lpt_first; lnum <= c->lpt_last; lnum++) {
		err = FUNC5(c, lnum);
		if (err) {
			FUNC8(c, "failed at LEB %d", lnum);
			return err;
		}
	}

	FUNC7("succeeded");
	return 0;
}