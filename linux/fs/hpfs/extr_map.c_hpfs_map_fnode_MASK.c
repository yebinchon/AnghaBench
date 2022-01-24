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
struct TYPE_4__ {int n_used_nodes; int /*<<< orphan*/  first_free; scalar_t__ n_free_nodes; } ;
struct fnode {int /*<<< orphan*/  ea_size_s; int /*<<< orphan*/  ea_offs; int /*<<< orphan*/  acl_size_s; TYPE_2__ btree; int /*<<< orphan*/  magic; } ;
struct extended_attribute {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_3__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 scalar_t__ FNODE_MAGIC ; 
 int /*<<< orphan*/  FNODE_RD_AHEAD ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct extended_attribute* FUNC2 (struct fnode*) ; 
 struct extended_attribute* FUNC3 (struct fnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fnode*) ; 
 scalar_t__ FUNC5 (struct super_block*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,unsigned long,...) ; 
 struct fnode* FUNC7 (struct super_block*,scalar_t__,struct buffer_head**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct super_block*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct extended_attribute* FUNC11 (struct extended_attribute*) ; 

struct fnode *FUNC12(struct super_block *s, ino_t ino, struct buffer_head **bhp)
{
	struct fnode *fnode;
	if (FUNC8(s)->sb_chk) if (FUNC5(s, ino, 1, "fnode")) {
		return NULL;
	}
	if ((fnode = FUNC7(s, ino, bhp, FNODE_RD_AHEAD))) {
		if (FUNC8(s)->sb_chk) {
			struct extended_attribute *ea;
			struct extended_attribute *ea_end;
			if (FUNC10(fnode->magic) != FNODE_MAGIC) {
				FUNC6(s, "bad magic on fnode %08lx",
					(unsigned long)ino);
				goto bail;
			}
			if (!FUNC4(fnode)) {
				if ((unsigned)fnode->btree.n_used_nodes + (unsigned)fnode->btree.n_free_nodes !=
				    (FUNC0(&fnode->btree) ? 12 : 8)) {
					FUNC6(s,
					   "bad number of nodes in fnode %08lx",
					    (unsigned long)ino);
					goto bail;
				}
				if (FUNC9(fnode->btree.first_free) !=
				    8 + fnode->btree.n_used_nodes * (FUNC0(&fnode->btree) ? 8 : 12)) {
					FUNC6(s,
					    "bad first_free pointer in fnode %08lx",
					    (unsigned long)ino);
					goto bail;
				}
			}
			if (FUNC9(fnode->ea_size_s) && (FUNC9(fnode->ea_offs) < 0xc4 ||
			   FUNC9(fnode->ea_offs) + FUNC9(fnode->acl_size_s) + FUNC9(fnode->ea_size_s) > 0x200)) {
				FUNC6(s,
					"bad EA info in fnode %08lx: ea_offs == %04x ea_size_s == %04x",
					(unsigned long)ino,
					FUNC9(fnode->ea_offs), FUNC9(fnode->ea_size_s));
				goto bail;
			}
			ea = FUNC2(fnode);
			ea_end = FUNC3(fnode);
			while (ea != ea_end) {
				if (ea > ea_end) {
					FUNC6(s, "bad EA in fnode %08lx",
						(unsigned long)ino);
					goto bail;
				}
				ea = FUNC11(ea);
			}
		}
	}
	return fnode;
	bail:
	FUNC1(*bhp);
	return NULL;
}