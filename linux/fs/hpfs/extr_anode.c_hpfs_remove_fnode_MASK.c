#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* external; } ;
struct fnode {int /*<<< orphan*/  ea_size_l; int /*<<< orphan*/  ea_secno; TYPE_2__ u; int /*<<< orphan*/  btree; } ;
struct extended_attribute {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  fnode_secno ;
struct TYPE_3__ {int /*<<< orphan*/  disk_secno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct extended_attribute*) ; 
 scalar_t__ FUNC2 (struct extended_attribute*) ; 
 int /*<<< orphan*/  FUNC3 (struct extended_attribute*) ; 
 int /*<<< orphan*/  FUNC4 (struct extended_attribute*) ; 
 struct extended_attribute* FUNC5 (struct fnode*) ; 
 struct extended_attribute* FUNC6 (struct fnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct fnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct fnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 struct fnode* FUNC12 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct extended_attribute* FUNC16 (struct extended_attribute*) ; 

void FUNC17(struct super_block *s, fnode_secno fno)
{
	struct buffer_head *bh;
	struct fnode *fnode;
	struct extended_attribute *ea;
	struct extended_attribute *ea_end;
	if (!(fnode = FUNC12(s, fno, &bh))) return;
	if (!FUNC8(fnode)) FUNC13(s, &fnode->btree);
	else FUNC14(s, FUNC15(fnode->u.external[0].disk_secno));
	ea_end = FUNC6(fnode);
	for (ea = FUNC5(fnode); ea < ea_end; ea = FUNC16(ea))
		if (FUNC2(ea))
			FUNC10(s, FUNC4(ea), FUNC1(ea), FUNC3(ea));
	FUNC9(s, FUNC15(fnode->ea_secno), FUNC7(fnode), FUNC15(fnode->ea_size_l));
	FUNC0(bh);
	FUNC11(s, fno, 1);
}