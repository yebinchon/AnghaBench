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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_dirent {scalar_t__ last; int /*<<< orphan*/  first; scalar_t__ directory; scalar_t__ down; } ;
struct dnode {scalar_t__ root_dnode; int /*<<< orphan*/  up; } ;
typedef  int dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 int FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,int,int,int) ; 
 struct dnode* FUNC6 (struct super_block*,int,struct quad_buffer_head*) ; 
 TYPE_1__* FUNC7 (struct super_block*) ; 
 scalar_t__ FUNC8 (struct super_block*,int,int*,int*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct super_block *s, dnode_secno dno, int *n_dnodes,
		       int *n_subdirs, int *n_items)
{
	struct dnode *dnode;
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de;
	dnode_secno ptr, odno = 0;
	int c1, c2 = 0;
	int d1, d2 = 0;
	go_down:
	if (n_dnodes) (*n_dnodes)++;
	if (FUNC7(s)->sb_chk)
		if (FUNC8(s, dno, &c1, &c2, "hpfs_count_dnodes #1")) return;
	ptr = 0;
	go_up:
	if (!(dnode = FUNC6(s, dno, &qbh))) return;
	if (FUNC7(s)->sb_chk) if (odno && odno != -1 && FUNC9(dnode->up) != odno)
		FUNC5(s, "hpfs_count_dnodes: bad up pointer; dnode %08x, down %08x points to %08x", odno, dno, FUNC9(dnode->up));
	de = FUNC3(dnode);
	if (ptr) while(1) {
		if (de->down) if (FUNC0(de) == ptr) goto process_de;
		if (de->last) {
			FUNC4(&qbh);
			FUNC5(s, "hpfs_count_dnodes: pointer to dnode %08x not found in dnode %08x, got here from %08x",
				ptr, dno, odno);
			return;
		}
		de = FUNC1(de);
	}
	next_de:
	if (de->down) {
		odno = dno;
		dno = FUNC0(de);
		FUNC4(&qbh);
		goto go_down;
	}
	process_de:
	if (!de->first && !de->last && de->directory && n_subdirs) (*n_subdirs)++;
	if (!de->first && !de->last && n_items) (*n_items)++;
	if ((de = FUNC1(de)) < FUNC2(dnode)) goto next_de;
	ptr = dno;
	dno = FUNC9(dnode->up);
	if (dnode->root_dnode) {
		FUNC4(&qbh);
		return;
	}
	FUNC4(&qbh);
	if (FUNC7(s)->sb_chk)
		if (FUNC8(s, ptr, &d1, &d2, "hpfs_count_dnodes #2")) return;
	odno = -1;
	goto go_up;
}