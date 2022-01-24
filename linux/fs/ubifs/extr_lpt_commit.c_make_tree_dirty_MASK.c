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
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_pnode*) ; 
 int FUNC1 (struct ubifs_pnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct ubifs_pnode*) ; 
 struct ubifs_pnode* FUNC3 (struct ubifs_info*,struct ubifs_pnode*) ; 
 struct ubifs_pnode* FUNC4 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c)
{
	struct ubifs_pnode *pnode;

	pnode = FUNC4(c, 0);
	if (FUNC0(pnode))
		return FUNC1(pnode);

	while (pnode) {
		FUNC2(c, pnode);
		pnode = FUNC3(c, pnode);
		if (FUNC0(pnode))
			return FUNC1(pnode);
	}
	return 0;
}