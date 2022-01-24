#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qstr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_type; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct gfs2_dirent*) ; 
 int FUNC1 (struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  gfs2_dirent_find ; 
 struct gfs2_dirent* FUNC6 (TYPE_1__*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode const*,struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

int FUNC10(struct gfs2_inode *dip, const struct qstr *filename,
		   const struct gfs2_inode *nip, unsigned int new_type)
{
	struct buffer_head *bh;
	struct gfs2_dirent *dent;

	dent = FUNC6(&dip->i_inode, filename, gfs2_dirent_find, &bh);
	if (!dent) {
		FUNC5(dip);
		return -EIO;
	}
	if (FUNC0(dent))
		return FUNC1(dent);

	FUNC8(dip->i_gl, bh);
	FUNC7(nip, dent);
	dent->de_type = FUNC3(new_type);
	FUNC2(bh);

	dip->i_inode.i_mtime = dip->i_inode.i_ctime = FUNC4(&dip->i_inode);
	FUNC9(&dip->i_inode);
	return 0;
}