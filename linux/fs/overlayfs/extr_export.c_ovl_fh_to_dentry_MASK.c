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
struct super_block {int dummy; } ;
struct ovl_fh {unsigned int flags; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 unsigned int OVL_FH_FLAG_PATH_UPPER ; 
 int OVL_FILEID ; 
 int FUNC2 (struct dentry*) ; 
 int FUNC3 (struct ovl_fh*,int) ; 
 struct dentry* FUNC4 (struct super_block*,struct ovl_fh*) ; 
 struct dentry* FUNC5 (struct super_block*,struct ovl_fh*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,unsigned int,int) ; 

__attribute__((used)) static struct dentry *FUNC7(struct super_block *sb, struct fid *fid,
				       int fh_len, int fh_type)
{
	struct dentry *dentry = NULL;
	struct ovl_fh *fh = (struct ovl_fh *) fid;
	int len = fh_len << 2;
	unsigned int flags = 0;
	int err;

	err = -EINVAL;
	if (fh_type != OVL_FILEID)
		goto out_err;

	err = FUNC3(fh, len);
	if (err)
		goto out_err;

	flags = fh->flags;
	dentry = (flags & OVL_FH_FLAG_PATH_UPPER) ?
		 FUNC5(sb, fh) :
		 FUNC4(sb, fh);
	err = FUNC2(dentry);
	if (FUNC1(dentry) && err != -ESTALE)
		goto out_err;

	return dentry;

out_err:
	FUNC6("overlayfs: failed to decode file handle (len=%d, type=%d, flags=%x, err=%i)\n",
			    len, fh_type, flags, err);
	return FUNC0(err);
}