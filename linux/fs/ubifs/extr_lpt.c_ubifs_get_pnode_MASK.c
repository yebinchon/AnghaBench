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
struct ubifs_nnode {struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {struct ubifs_pnode* pnode; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 struct ubifs_pnode* FUNC0 (int) ; 
 int FUNC1 (struct ubifs_info*,struct ubifs_nnode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct ubifs_pnode*) ; 

struct ubifs_pnode *FUNC3(struct ubifs_info *c,
				    struct ubifs_nnode *parent, int iip)
{
	struct ubifs_nbranch *branch;
	struct ubifs_pnode *pnode;
	int err;

	branch = &parent->nbranch[iip];
	pnode = branch->pnode;
	if (pnode)
		return pnode;
	err = FUNC1(c, parent, iip);
	if (err)
		return FUNC0(err);
	FUNC2(c, branch->pnode);
	return branch->pnode;
}