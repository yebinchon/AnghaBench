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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {scalar_t__ i_no_addr; scalar_t__ i_no_formal_ino; TYPE_2__ i_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  no_formal_ino; int /*<<< orphan*/  no_addr; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_type; TYPE_1__ de_inum; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct gfs2_dirent*) ; 
 int FUNC3 (struct gfs2_dirent*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_dirent_find ; 
 struct gfs2_dirent* FUNC8 (struct inode*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct inode *dir, const struct qstr *name,
		   const struct gfs2_inode *ip)
{
	struct buffer_head *bh;
	struct gfs2_dirent *dent;
	int ret = -ENOENT;

	dent = FUNC8(dir, name, gfs2_dirent_find, &bh);
	if (dent) {
		if (FUNC2(dent))
			return FUNC3(dent);
		if (ip) {
			if (FUNC5(dent->de_inum.no_addr) != ip->i_no_addr)
				goto out;
			if (FUNC5(dent->de_inum.no_formal_ino) !=
			    ip->i_no_formal_ino)
				goto out;
			if (FUNC9(FUNC1(ip->i_inode.i_mode) !=
			    FUNC4(dent->de_type))) {
				FUNC7(FUNC0(dir));
				ret = -EIO;
				goto out;
			}
		}
		ret = 0;
out:
		FUNC6(bh);
	}
	return ret;
}