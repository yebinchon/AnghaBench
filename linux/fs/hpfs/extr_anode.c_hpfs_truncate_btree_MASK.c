#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_7__ {TYPE_2__* external; TYPE_1__* internal; } ;
struct bplus_header {int n_free_nodes; int n_used_nodes; void* first_free; TYPE_3__ u; int /*<<< orphan*/  flags; } ;
struct fnode {struct bplus_header btree; } ;
struct buffer_head {int dummy; } ;
struct anode {struct bplus_header btree; } ;
typedef  unsigned int secno ;
typedef  unsigned int anode_secno ;
struct TYPE_8__ {scalar_t__ sb_chk; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  disk_secno; int /*<<< orphan*/  file_secno; } ;
struct TYPE_5__ {int /*<<< orphan*/  down; int /*<<< orphan*/  file_secno; } ;

/* Variables and functions */
 int /*<<< orphan*/  BP_internal ; 
 scalar_t__ FUNC0 (struct bplus_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,unsigned int,unsigned int) ; 
 struct anode* FUNC7 (struct super_block*,unsigned int,struct buffer_head**) ; 
 struct fnode* FUNC8 (struct super_block*,unsigned int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct bplus_header*) ; 
 TYPE_4__* FUNC10 (struct super_block*) ; 
 scalar_t__ FUNC11 (struct super_block*,unsigned int,int*,int*,char*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 

void FUNC14(struct super_block *s, secno f, int fno, unsigned secs)
{
	struct fnode *fnode;
	struct anode *anode;
	struct buffer_head *bh;
	struct bplus_header *btree;
	anode_secno node = f;
	int i, j, nodes;
	int c1, c2 = 0;
	if (fno) {
		if (!(fnode = FUNC8(s, f, &bh))) return;
		btree = &fnode->btree;
	} else {
		if (!(anode = FUNC7(s, f, &bh))) return;
		btree = &anode->btree;
	}
	if (!secs) {
		FUNC9(s, btree);
		if (fno) {
			btree->n_free_nodes = 8;
			btree->n_used_nodes = 0;
			btree->first_free = FUNC2(8);
			btree->flags &= ~BP_internal;
			FUNC13(bh);
		} else FUNC6(s, f, 1);
		FUNC1(bh);
		return;
	}
	while (FUNC0(btree)) {
		nodes = btree->n_used_nodes + btree->n_free_nodes;
		for (i = 0; i < btree->n_used_nodes; i++)
			if (FUNC12(btree->u.internal[i].file_secno) >= secs) goto f;
		FUNC1(bh);
		FUNC5(s, "internal btree %08x doesn't end with -1", node);
		return;
		f:
		for (j = i + 1; j < btree->n_used_nodes; j++)
			FUNC4(s, FUNC12(btree->u.internal[j].down), 1, 0);
		btree->n_used_nodes = i + 1;
		btree->n_free_nodes = nodes - btree->n_used_nodes;
		btree->first_free = FUNC2(8 + 8 * btree->n_used_nodes);
		FUNC13(bh);
		if (btree->u.internal[i].file_secno == FUNC3(secs)) {
			FUNC1(bh);
			return;
		}
		node = FUNC12(btree->u.internal[i].down);
		FUNC1(bh);
		if (FUNC10(s)->sb_chk)
			if (FUNC11(s, node, &c1, &c2, "hpfs_truncate_btree"))
				return;
		if (!(anode = FUNC7(s, node, &bh))) return;
		btree = &anode->btree;
	}	
	nodes = btree->n_used_nodes + btree->n_free_nodes;
	for (i = 0; i < btree->n_used_nodes; i++)
		if (FUNC12(btree->u.external[i].file_secno) + FUNC12(btree->u.external[i].length) >= secs) goto ff;
	FUNC1(bh);
	return;
	ff:
	if (secs <= FUNC12(btree->u.external[i].file_secno)) {
		FUNC5(s, "there is an allocation error in file %08x, sector %08x", f, secs);
		if (i) i--;
	}
	else if (FUNC12(btree->u.external[i].file_secno) + FUNC12(btree->u.external[i].length) > secs) {
		FUNC6(s, FUNC12(btree->u.external[i].disk_secno) + secs -
			FUNC12(btree->u.external[i].file_secno), FUNC12(btree->u.external[i].length)
			- secs + FUNC12(btree->u.external[i].file_secno)); /* I hope gcc optimizes this :-) */
		btree->u.external[i].length = FUNC3(secs - FUNC12(btree->u.external[i].file_secno));
	}
	for (j = i + 1; j < btree->n_used_nodes; j++)
		FUNC6(s, FUNC12(btree->u.external[j].disk_secno), FUNC12(btree->u.external[j].length));
	btree->n_used_nodes = i + 1;
	btree->n_free_nodes = nodes - btree->n_used_nodes;
	btree->first_free = FUNC2(8 + 12 * btree->n_used_nodes);
	FUNC13(bh);
	FUNC1(bh);
}