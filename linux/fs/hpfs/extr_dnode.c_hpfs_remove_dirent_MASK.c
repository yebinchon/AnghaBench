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
struct quad_buffer_head {struct dnode* data; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hpfs_dirent {scalar_t__ down; scalar_t__ last; scalar_t__ first; } ;
struct dnode {int dummy; } ;
typedef  int loff_t ;
typedef  scalar_t__ dnode_secno ;
struct TYPE_2__ {scalar_t__ last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_DNODES_DEL ; 
 scalar_t__ FUNC0 (struct hpfs_dirent*) ; 
 TYPE_1__* FUNC1 (struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct dnode*,struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC6 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct dnode*,struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  hpfs_pos_del ; 
 int /*<<< orphan*/  hpfs_pos_subst ; 
 scalar_t__ FUNC11 (struct inode*,scalar_t__,scalar_t__) ; 

int FUNC12(struct inode *i, dnode_secno dno, struct hpfs_dirent *de,
		       struct quad_buffer_head *qbh, int depth)
{
	struct dnode *dnode = qbh->data;
	dnode_secno down = 0;
	loff_t t;
	if (de->first || de->last) {
		FUNC9(i->i_sb, "hpfs_remove_dirent: attempt to delete first or last dirent in dnode %08x", dno);
		FUNC6(qbh);
		return 1;
	}
	if (de->down) down = FUNC0(de);
	if (depth && (de->down || (de == FUNC3(dnode) && FUNC1(de)->last))) {
		if (FUNC7(i->i_sb, FREE_DNODES_DEL)) {
			FUNC6(qbh);
			return 2;
		}
	}
	FUNC4(i, hpfs_pos_del, (t = FUNC5(dnode, de)) + 1, 1);
	FUNC8(i->i_sb, dnode, de);
	FUNC10(qbh);
	FUNC6(qbh);
	if (down) {
		dnode_secno a = FUNC11(i, down, dno);
		FUNC4(i, hpfs_pos_subst, 5, t);
		if (a) FUNC2(i, a);
		return !a;
	}
	FUNC2(i, dno);
	return 0;
}