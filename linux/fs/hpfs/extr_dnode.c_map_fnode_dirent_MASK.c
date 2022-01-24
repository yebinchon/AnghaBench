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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_dirent {int /*<<< orphan*/  last; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  fnode; scalar_t__ down; } ;
struct TYPE_5__ {TYPE_1__* external; } ;
struct fnode {unsigned char* name; int len; TYPE_2__ u; int /*<<< orphan*/  up; } ;
struct dnode {int /*<<< orphan*/  up; scalar_t__ root_dnode; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ fnode_secno ;
typedef  scalar_t__ dnode_secno ;
struct TYPE_6__ {scalar_t__ sb_chk; } ;
struct TYPE_4__ {int /*<<< orphan*/  disk_secno; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 struct hpfs_dirent* FUNC4 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct fnode*) ; 
 int /*<<< orphan*/  FUNC6 (struct quad_buffer_head*) ; 
 int FUNC7 (struct super_block*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,scalar_t__,...) ; 
 struct dnode* FUNC9 (struct super_block*,scalar_t__,struct quad_buffer_head*) ; 
 struct fnode* FUNC10 (struct super_block*,scalar_t__,struct buffer_head**) ; 
 TYPE_3__* FUNC11 (struct super_block*) ; 
 scalar_t__ FUNC12 (struct super_block*,scalar_t__,int*,int*,char*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*) ; 
 unsigned char* FUNC14 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

struct hpfs_dirent *FUNC19(struct super_block *s, fnode_secno fno,
				     struct fnode *f, struct quad_buffer_head *qbh)
{
	unsigned char *name1;
	unsigned char *name2;
	int name1len, name2len;
	struct dnode *d;
	dnode_secno dno, downd;
	struct fnode *upf;
	struct buffer_head *bh;
	struct hpfs_dirent *de, *de_end;
	int c;
	int c1, c2 = 0;
	int d1, d2 = 0;
	name1 = f->name;
	if (!(name2 = FUNC14(256, GFP_NOFS))) {
		FUNC18("out of memory, can't map dirent\n");
		return NULL;
	}
	if (f->len <= 15)
		FUNC16(name2, name1, name1len = name2len = f->len);
	else {
		FUNC16(name2, name1, 15);
		FUNC17(name2 + 15, 0xff, 256 - 15);
		/*name2[15] = 0xff;*/
		name1len = 15; name2len = 256;
	}
	if (!(upf = FUNC10(s, FUNC15(f->up), &bh))) {
		FUNC13(name2);
		return NULL;
	}	
	if (!FUNC5(upf)) {
		FUNC0(bh);
		FUNC8(s, "fnode %08x has non-directory parent %08x", fno, FUNC15(f->up));
		FUNC13(name2);
		return NULL;
	}
	dno = FUNC15(upf->u.external[0].disk_secno);
	FUNC0(bh);
	go_down:
	downd = 0;
	go_up:
	if (!(d = FUNC9(s, dno, qbh))) {
		FUNC13(name2);
		return NULL;
	}
	de_end = FUNC3(d);
	de = FUNC4(d);
	if (downd) {
		while (de < de_end) {
			if (de->down) if (FUNC1(de) == downd) goto f;
			de = FUNC2(de);
		}
		FUNC8(s, "pointer to dnode %08x not found in dnode %08x", downd, dno);
		FUNC6(qbh);
		FUNC13(name2);
		return NULL;
	}
	next_de:
	if (FUNC15(de->fnode) == fno) {
		FUNC13(name2);
		return de;
	}
	c = FUNC7(s, name1, name1len, de->name, de->namelen, de->last);
	if (c < 0 && de->down) {
		dno = FUNC1(de);
		FUNC6(qbh);
		if (FUNC11(s)->sb_chk)
			if (FUNC12(s, dno, &c1, &c2, "map_fnode_dirent #1")) {
				FUNC13(name2);
				return NULL;
		}
		goto go_down;
	}
	f:
	if (FUNC15(de->fnode) == fno) {
		FUNC13(name2);
		return de;
	}
	c = FUNC7(s, name2, name2len, de->name, de->namelen, de->last);
	if (c < 0 && !de->last) goto not_found;
	if ((de = FUNC2(de)) < de_end) goto next_de;
	if (d->root_dnode) goto not_found;
	downd = dno;
	dno = FUNC15(d->up);
	FUNC6(qbh);
	if (FUNC11(s)->sb_chk)
		if (FUNC12(s, downd, &d1, &d2, "map_fnode_dirent #2")) {
			FUNC13(name2);
			return NULL;
		}
	goto go_up;
	not_found:
	FUNC6(qbh);
	FUNC8(s, "dirent for fnode %08x not found", fno);
	FUNC13(name2);
	return NULL;
}