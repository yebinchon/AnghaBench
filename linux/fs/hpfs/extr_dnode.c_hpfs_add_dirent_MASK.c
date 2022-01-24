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
struct quad_buffer_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hpfs_inode_info {int /*<<< orphan*/  i_dno; } ;
struct hpfs_dirent {scalar_t__ down; int /*<<< orphan*/  last; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct dnode {int dummy; } ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_DNODES_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct hpfs_dirent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char const*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hpfs_inode_info* FUNC8 (struct inode*) ; 
 struct dnode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct quad_buffer_head*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,char*) ; 

int FUNC12(struct inode *i,
		    const unsigned char *name, unsigned namelen,
		    struct hpfs_dirent *new_de)
{
	struct hpfs_inode_info *hpfs_inode = FUNC8(i);
	struct dnode *d;
	struct hpfs_dirent *de, *de_end;
	struct quad_buffer_head qbh;
	dnode_secno dno;
	int c;
	int c1, c2 = 0;
	dno = hpfs_inode->i_dno;
	down:
	if (FUNC10(i->i_sb)->sb_chk)
		if (FUNC11(i->i_sb, dno, &c1, &c2, "hpfs_add_dirent")) return 1;
	if (!(d = FUNC9(i->i_sb, dno, &qbh))) return 1;
	de_end = FUNC2(d);
	for (de = FUNC3(d); de < de_end; de = FUNC1(de)) {
		if (!(c = FUNC7(i->i_sb, name, namelen, de->name, de->namelen, de->last))) {
			FUNC5(&qbh);
			return -1;
		}	
		if (c < 0) {
			if (de->down) {
				dno = FUNC0(de);
				FUNC5(&qbh);
				goto down;
			}
			break;
		}
	}
	FUNC5(&qbh);
	if (FUNC6(i->i_sb, FREE_DNODES_ADD)) {
		c = 1;
		goto ret;
	}	
	c = FUNC4(i, dno, name, namelen, new_de, 0);
	ret:
	return c;
}