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
struct quad_buffer_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hpfs_dirent {scalar_t__ down; } ;
struct dnode {int /*<<< orphan*/  up; scalar_t__ root_dnode; } ;
typedef  int loff_t ;
typedef  int dnode_secno ;

/* Variables and functions */
 int FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct dnode* FUNC7 (int /*<<< orphan*/ ,scalar_t__,struct quad_buffer_head*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct hpfs_dirent* FUNC9 (int /*<<< orphan*/ ,int,int,struct quad_buffer_head*,struct dnode**) ; 

struct hpfs_dirent *FUNC10(struct inode *inode, loff_t *posp,
				   struct quad_buffer_head *qbh)
{
	loff_t pos;
	unsigned c;
	dnode_secno dno;
	struct hpfs_dirent *de, *d;
	struct hpfs_dirent *up_de;
	struct hpfs_dirent *end_up_de;
	struct dnode *dnode;
	struct dnode *up_dnode;
	struct quad_buffer_head qbh0;

	pos = *posp;
	dno = pos >> 6 << 2;
	pos &= 077;
	if (!(de = FUNC9(inode->i_sb, dno, pos, qbh, &dnode)))
		goto bail;

	/* Going to the next dirent */
	if ((d = FUNC1(de)) < FUNC2(dnode)) {
		if (!(++*posp & 077)) {
			FUNC6(inode->i_sb,
				"map_pos_dirent: pos crossed dnode boundary; pos = %08llx",
				(unsigned long long)*posp);
			goto bail;
		}
		/* We're going down the tree */
		if (d->down) {
			*posp = ((loff_t) FUNC5(inode->i_sb, FUNC0(d)) << 4) + 1;
		}
	
		return de;
	}

	/* Going up */
	if (dnode->root_dnode) goto bail;

	if (!(up_dnode = FUNC7(inode->i_sb, FUNC8(dnode->up), &qbh0)))
		goto bail;

	end_up_de = FUNC2(up_dnode);
	c = 0;
	for (up_de = FUNC3(up_dnode); up_de < end_up_de;
	     up_de = FUNC1(up_de)) {
		if (!(++c & 077)) FUNC6(inode->i_sb,
			"map_pos_dirent: pos crossed dnode boundary; dnode = %08x", FUNC8(dnode->up));
		if (up_de->down && FUNC0(up_de) == dno) {
			*posp = ((loff_t) FUNC8(dnode->up) << 4) + c;
			FUNC4(&qbh0);
			return de;
		}
	}
	
	FUNC6(inode->i_sb, "map_pos_dirent: pointer to dnode %08x not found in parent dnode %08x",
		dno, FUNC8(dnode->up));
	FUNC4(&qbh0);
	
	bail:
	*posp = 12;
	return de;
}