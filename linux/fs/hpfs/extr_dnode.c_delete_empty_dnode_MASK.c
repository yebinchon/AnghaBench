#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {int dummy; } ;
struct inode {int i_size; int i_blocks; int i_ino; int /*<<< orphan*/  i_sb; } ;
struct hpfs_inode_info {int i_dno; } ;
struct hpfs_dirent {int down; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  length; int /*<<< orphan*/  last; } ;
struct TYPE_5__ {TYPE_1__* external; } ;
struct fnode {TYPE_2__ u; } ;
struct dnode {int root_dnode; void* up; void* first_free; } ;
struct buffer_head {int dummy; } ;
typedef  int loff_t ;
typedef  int dnode_secno ;
typedef  void* __le32 ;
struct TYPE_6__ {int sb_chk; } ;
struct TYPE_4__ {void* disk_secno; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC3 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC4 (struct dnode*) ; 
 struct hpfs_dirent* FUNC5 (struct dnode*) ; 
 struct hpfs_dirent* FUNC6 (struct dnode*) ; 
 struct hpfs_dirent* FUNC7 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hpfs_dirent*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct dnode*,struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 struct hpfs_inode_info* FUNC14 (struct inode*) ; 
 struct dnode* FUNC15 (int /*<<< orphan*/ ,int,struct quad_buffer_head*) ; 
 struct fnode* FUNC16 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC17 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  hpfs_pos_del ; 
 int /*<<< orphan*/  hpfs_pos_subst ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (void**,int) ; 
 int FUNC25 (void*) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (struct hpfs_dirent*,struct hpfs_dirent*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct hpfs_dirent*,char*,int) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 

__attribute__((used)) static void FUNC30(struct inode *i, dnode_secno dno)
{
	struct hpfs_inode_info *hpfs_inode = FUNC14(i);
	struct quad_buffer_head qbh;
	struct dnode *dnode;
	dnode_secno down, up, ndown;
	int p;
	struct hpfs_dirent *de;
	int c1, c2 = 0;
	try_it_again:
	if (FUNC19(i->i_sb, dno, &c1, &c2, "delete_empty_dnode")) return;
	if (!(dnode = FUNC15(i->i_sb, dno, &qbh))) return;
	if (FUNC25(dnode->first_free) > 56) goto end;
	if (FUNC25(dnode->first_free) == 52 || FUNC25(dnode->first_free) == 56) {
		struct hpfs_dirent *de_end;
		int root = dnode->root_dnode;
		up = FUNC25(dnode->up);
		de = FUNC5(dnode);
		down = de->down ? FUNC2(de) : 0;
		if (FUNC18(i->i_sb)->sb_chk) if (root && !down) {
			FUNC12(i->i_sb, "delete_empty_dnode: root dnode %08x is empty", dno);
			goto end;
		}
		FUNC10(&qbh);
		FUNC13(i->i_sb, dno);
		i->i_size -= 2048;
		i->i_blocks -= 4;
		if (root) {
			struct fnode *fnode;
			struct buffer_head *bh;
			struct dnode *d1;
			struct quad_buffer_head qbh1;
			if (FUNC18(i->i_sb)->sb_chk)
				if (up != i->i_ino) {
					FUNC12(i->i_sb,
						   "bad pointer to fnode, dnode %08x, pointing to %08x, should be %08lx",
						   dno, up,
						   (unsigned long)i->i_ino);
					return;
				}
			if ((d1 = FUNC15(i->i_sb, down, &qbh1))) {
				d1->up = FUNC1(up);
				d1->root_dnode = 1;
				FUNC17(&qbh1);
				FUNC10(&qbh1);
			}
			if ((fnode = FUNC16(i->i_sb, up, &bh))) {
				fnode->u.external[0].disk_secno = FUNC1(down);
				FUNC26(bh);
				FUNC0(bh);
			}
			hpfs_inode->i_dno = down;
			FUNC8(i, hpfs_pos_subst, ((loff_t)dno << 4) | 1, (loff_t) 12);
			return;
		}
		if (!(dnode = FUNC15(i->i_sb, up, &qbh))) return;
		p = 1;
		de_end = FUNC4(dnode);
		for (de = FUNC5(dnode); de < de_end; de = FUNC3(de), p++)
			if (de->down) if (FUNC2(de) == dno) goto fnd;
		FUNC12(i->i_sb, "delete_empty_dnode: pointer to dnode %08x not found in dnode %08x", dno, up);
		goto end;
		fnd:
		FUNC8(i, hpfs_pos_subst, ((loff_t)dno << 4) | 1, ((loff_t)up << 4) | p);
		if (!down) {
			de->down = 0;
			FUNC22(&de->length, -4);
			FUNC24(&dnode->first_free, -4);
			FUNC28(FUNC3(de), (char *)FUNC3(de) + 4,
				(char *)dnode + FUNC25(dnode->first_free) - (char *)FUNC3(de));
		} else {
			struct dnode *d1;
			struct quad_buffer_head qbh1;
			*(dnode_secno *) ((void *) de + FUNC23(de->length) - 4) = down;
			if ((d1 = FUNC15(i->i_sb, down, &qbh1))) {
				d1->up = FUNC1(up);
				FUNC17(&qbh1);
				FUNC10(&qbh1);
			}
		}
	} else {
		FUNC12(i->i_sb, "delete_empty_dnode: dnode %08x, first_free == %03x", dno, FUNC25(dnode->first_free));
		goto end;
	}

	if (!de->last) {
		struct hpfs_dirent *de_next = FUNC3(de);
		struct hpfs_dirent *de_cp;
		struct dnode *d1;
		struct quad_buffer_head qbh1;
		if (!de_next->down) goto endm;
		ndown = FUNC2(de_next);
		if (!(de_cp = FUNC21(FUNC23(de->length), GFP_NOFS))) {
			FUNC29("out of memory for dtree balancing\n");
			goto endm;
		}
		FUNC27(de_cp, de, FUNC23(de->length));
		FUNC11(i->i_sb, dnode, de);
		FUNC17(&qbh);
		FUNC10(&qbh);
		FUNC8(i, hpfs_pos_subst, ((loff_t)up << 4) | p, 4);
		FUNC8(i, hpfs_pos_del, ((loff_t)up << 4) | p, 1);
		if (de_cp->down) if ((d1 = FUNC15(i->i_sb, FUNC2(de_cp), &qbh1))) {
			d1->up = FUNC1(ndown);
			FUNC17(&qbh1);
			FUNC10(&qbh1);
		}
		FUNC9(i, ndown, de_cp->name, de_cp->namelen, de_cp, de_cp->down ? FUNC2(de_cp) : 0);
		/*pr_info("UP-TO-DNODE: %08x (ndown = %08x, down = %08x, dno = %08x)\n",
		  up, ndown, down, dno);*/
		dno = up;
		FUNC20(de_cp);
		goto try_it_again;
	} else {
		struct hpfs_dirent *de_prev = FUNC7(dnode);
		struct hpfs_dirent *de_cp;
		struct dnode *d1;
		struct quad_buffer_head qbh1;
		dnode_secno dlp;
		if (!de_prev) {
			FUNC12(i->i_sb, "delete_empty_dnode: empty dnode %08x", up);
			FUNC17(&qbh);
			FUNC10(&qbh);
			dno = up;
			goto try_it_again;
		}
		if (!de_prev->down) goto endm;
		ndown = FUNC2(de_prev);
		if ((d1 = FUNC15(i->i_sb, ndown, &qbh1))) {
			struct hpfs_dirent *del = FUNC6(d1);
			dlp = del->down ? FUNC2(del) : 0;
			if (!dlp && down) {
				if (FUNC25(d1->first_free) > 2044) {
					if (FUNC18(i->i_sb)->sb_chk >= 2) {
						FUNC29("unbalanced dnode tree, see hpfs.txt 4 more info\n");
						FUNC29("terminating balancing operation\n");
					}
					FUNC10(&qbh1);
					goto endm;
				}
				if (FUNC18(i->i_sb)->sb_chk >= 2) {
					FUNC29("unbalanced dnode tree, see hpfs.txt 4 more info\n");
					FUNC29("goin'on\n");
				}
				FUNC22(&del->length, 4);
				del->down = 1;
				FUNC24(&d1->first_free, 4);
			}
			if (dlp && !down) {
				FUNC22(&del->length, -4);
				del->down = 0;
				FUNC24(&d1->first_free, -4);
			} else if (down)
				*(__le32 *) ((void *) del + FUNC23(del->length) - 4) = FUNC1(down);
		} else goto endm;
		if (!(de_cp = FUNC21(FUNC23(de_prev->length), GFP_NOFS))) {
			FUNC29("out of memory for dtree balancing\n");
			FUNC10(&qbh1);
			goto endm;
		}
		FUNC17(&qbh1);
		FUNC10(&qbh1);
		FUNC27(de_cp, de_prev, FUNC23(de_prev->length));
		FUNC11(i->i_sb, dnode, de_prev);
		if (!de_prev->down) {
			FUNC22(&de_prev->length, 4);
			de_prev->down = 1;
			FUNC24(&dnode->first_free, 4);
		}
		*(__le32 *) ((void *) de_prev + FUNC23(de_prev->length) - 4) = FUNC1(ndown);
		FUNC17(&qbh);
		FUNC10(&qbh);
		FUNC8(i, hpfs_pos_subst, ((loff_t)up << 4) | (p - 1), 4);
		FUNC8(i, hpfs_pos_subst, ((loff_t)up << 4) | p, ((loff_t)up << 4) | (p - 1));
		if (down) if ((d1 = FUNC15(i->i_sb, FUNC2(de), &qbh1))) {
			d1->up = FUNC1(ndown);
			FUNC17(&qbh1);
			FUNC10(&qbh1);
		}
		FUNC9(i, ndown, de_cp->name, de_cp->namelen, de_cp, dlp);
		dno = up;
		FUNC20(de_cp);
		goto try_it_again;
	}
	endm:
	FUNC17(&qbh);
	end:
	FUNC10(&qbh);
}