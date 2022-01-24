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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct qstr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  no_formal_ino; int /*<<< orphan*/  no_addr; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__ de_inum; int /*<<< orphan*/  de_rahead; int /*<<< orphan*/  de_type; } ;
struct gfs2_dirent {int /*<<< orphan*/  i_sb; TYPE_1__ de_inum; int /*<<< orphan*/  de_rahead; int /*<<< orphan*/  de_type; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_rahead; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOENT ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_BLKST_FREE ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  gfs2_dirent_find ; 
 struct inode* FUNC7 (struct inode*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct inode *FUNC9(struct inode *dir, const struct qstr *name,
			      bool fail_on_exist)
{
	struct buffer_head *bh;
	struct gfs2_dirent *dent;
	u64 addr, formal_ino;
	u16 dtype;

	dent = FUNC7(dir, name, gfs2_dirent_find, &bh);
	if (dent) {
		struct inode *inode;
		u16 rahead;

		if (FUNC3(dent))
			return FUNC0(dent);
		dtype = FUNC4(dent->de_type);
		rahead = FUNC4(dent->de_rahead);
		addr = FUNC5(dent->de_inum.no_addr);
		formal_ino = FUNC5(dent->de_inum.no_formal_ino);
		FUNC6(bh);
		if (fail_on_exist)
			return FUNC1(-EEXIST);
		inode = FUNC8(dir->i_sb, dtype, addr, formal_ino,
					  GFS2_BLKST_FREE /* ignore */);
		if (!FUNC3(inode))
			FUNC2(inode)->i_rahead = rahead;
		return inode;
	}
	return FUNC1(-ENOENT);
}