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
struct inode {scalar_t__ i_size; } ;
struct gfs2_sbd {struct inode* sd_rindex; } ;
struct gfs2_inode {int /*<<< orphan*/  i_res; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 long EOPNOTSUPP ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int FUNC2 (struct file*,int,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct file*,scalar_t__,scalar_t__) ; 
 struct inode* FUNC4 (struct file*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int FUNC7 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_holder*) ; 
 scalar_t__ FUNC10 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 

__attribute__((used)) static long FUNC17(struct file *file, int mode, loff_t offset, loff_t len)
{
	struct inode *inode = FUNC4(file);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int ret;

	if (mode & ~(FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE))
		return -EOPNOTSUPP;
	/* fallocate is needed by gfs2_grow to reserve space in the rindex */
	if (FUNC10(ip) && inode != sdp->sd_rindex)
		return -EOPNOTSUPP;

	FUNC13(inode);

	FUNC8(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
	ret = FUNC7(&gh);
	if (ret)
		goto out_uninit;

	if (!(mode & FALLOC_FL_KEEP_SIZE) &&
	    (offset + len) > inode->i_size) {
		ret = FUNC14(inode, offset + len);
		if (ret)
			goto out_unlock;
	}

	ret = FUNC5(inode);
	if (ret)
		goto out_unlock;

	if (mode & FALLOC_FL_PUNCH_HOLE) {
		ret = FUNC3(file, offset, len);
	} else {
		ret = FUNC12(ip);
		if (ret)
			goto out_putw;

		ret = FUNC2(file, mode, offset, len);

		if (ret)
			FUNC11(&ip->i_res);
	}

out_putw:
	FUNC16(inode);
out_unlock:
	FUNC6(&gh);
out_uninit:
	FUNC9(&gh);
	FUNC15(inode);
	return ret;
}