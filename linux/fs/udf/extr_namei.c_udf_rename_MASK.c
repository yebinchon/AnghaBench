#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int /*<<< orphan*/  i_location; scalar_t__ i_efe; TYPE_1__ i_ext; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {scalar_t__ i_ino; void* i_mtime; void* i_ctime; TYPE_2__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  extLocation; } ;
struct fileIdentDesc {TYPE_3__ icb; int /*<<< orphan*/  fileCharacteristics; int /*<<< orphan*/  fileVersionNum; } ;
struct fileEntry {int dummy; } ;
struct extendedFileEntry {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 scalar_t__ FUNC0 (struct fileIdentDesc*) ; 
 int FUNC1 (struct fileIdentDesc*) ; 
 unsigned int RENAME_NOREPLACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct udf_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct kernel_lb_addr FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_3__*,int) ; 
 struct fileIdentDesc* FUNC15 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 struct buffer_head* FUNC16 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct fileIdentDesc*,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 int /*<<< orphan*/  FUNC18 (struct fileIdentDesc*) ; 
 int FUNC19 (struct inode*) ; 
 struct fileIdentDesc* FUNC20 (struct inode*,int /*<<< orphan*/ *,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 struct fileIdentDesc* FUNC21 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC22 (TYPE_2__*,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry,
		      unsigned int flags)
{
	struct inode *old_inode = FUNC7(old_dentry);
	struct inode *new_inode = FUNC7(new_dentry);
	struct udf_fileident_bh ofibh, nfibh;
	struct fileIdentDesc *ofi = NULL, *nfi = NULL, *dir_fi = NULL;
	struct fileIdentDesc ocfi, ncfi;
	struct buffer_head *dir_bh = NULL;
	int retval = -ENOENT;
	struct kernel_lb_addr tloc;
	struct udf_inode_info *old_iinfo = FUNC3(old_inode);

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	ofi = FUNC20(old_dir, &old_dentry->d_name, &ofibh, &ocfi);
	if (FUNC0(ofi)) {
		retval = FUNC1(ofi);
		goto end_rename;
	}

	if (ofibh.sbh != ofibh.ebh)
		FUNC4(ofibh.ebh);

	FUNC4(ofibh.sbh);
	tloc = FUNC11(ocfi.icb.extLocation);
	if (!ofi || FUNC22(old_dir->i_sb, &tloc, 0)
	    != old_inode->i_ino)
		goto end_rename;

	nfi = FUNC20(new_dir, &new_dentry->d_name, &nfibh, &ncfi);
	if (FUNC0(nfi)) {
		retval = FUNC1(nfi);
		goto end_rename;
	}
	if (nfi && !new_inode) {
		if (nfibh.sbh != nfibh.ebh)
			FUNC4(nfibh.ebh);
		FUNC4(nfibh.sbh);
		nfi = NULL;
	}
	if (FUNC2(old_inode->i_mode)) {
		int offset = FUNC19(old_inode);

		if (new_inode) {
			retval = -ENOTEMPTY;
			if (!FUNC8(new_inode))
				goto end_rename;
		}
		retval = -EIO;
		if (old_iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
			dir_fi = FUNC21(
					old_iinfo->i_ext.i_data -
					  (old_iinfo->i_efe ?
					   sizeof(struct extendedFileEntry) :
					   sizeof(struct fileEntry)),
					old_inode->i_sb->s_blocksize, &offset);
		} else {
			dir_bh = FUNC16(old_inode, 0, 0, &retval);
			if (!dir_bh)
				goto end_rename;
			dir_fi = FUNC21(dir_bh->b_data,
					old_inode->i_sb->s_blocksize, &offset);
		}
		if (!dir_fi)
			goto end_rename;
		tloc = FUNC11(dir_fi->icb.extLocation);
		if (FUNC22(old_inode->i_sb, &tloc, 0) !=
				old_dir->i_ino)
			goto end_rename;
	}
	if (!nfi) {
		nfi = FUNC15(new_dir, new_dentry, &nfibh, &ncfi,
				    &retval);
		if (!nfi)
			goto end_rename;
	}

	/*
	 * Like most other Unix systems, set the ctime for inodes on a
	 * rename.
	 */
	old_inode->i_ctime = FUNC6(old_inode);
	FUNC13(old_inode);

	/*
	 * ok, that's it
	 */
	ncfi.fileVersionNum = ocfi.fileVersionNum;
	ncfi.fileCharacteristics = ocfi.fileCharacteristics;
	FUNC14(&(ncfi.icb), &(ocfi.icb), sizeof(ocfi.icb));
	FUNC24(new_dir, &ncfi, nfi, &nfibh, NULL, NULL);

	/* The old fid may have moved - find it again */
	ofi = FUNC20(old_dir, &old_dentry->d_name, &ofibh, &ocfi);
	FUNC17(old_dir, ofi, &ofibh, &ocfi);

	if (new_inode) {
		new_inode->i_ctime = FUNC6(new_inode);
		FUNC10(new_inode);
	}
	old_dir->i_ctime = old_dir->i_mtime = FUNC6(old_dir);
	new_dir->i_ctime = new_dir->i_mtime = FUNC6(new_dir);
	FUNC13(old_dir);
	FUNC13(new_dir);

	if (dir_fi) {
		dir_fi->icb.extLocation = FUNC5(FUNC3(new_dir)->i_location);
		FUNC23((char *)dir_fi, FUNC18(dir_fi));
		if (old_iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
			FUNC13(old_inode);
		else
			FUNC12(dir_bh, old_inode);

		FUNC10(old_dir);
		if (new_inode)
			FUNC10(new_inode);
		else {
			FUNC9(new_dir);
			FUNC13(new_dir);
		}
	}

	if (ofi) {
		if (ofibh.sbh != ofibh.ebh)
			FUNC4(ofibh.ebh);
		FUNC4(ofibh.sbh);
	}

	retval = 0;

end_rename:
	FUNC4(dir_bh);
	if (nfi) {
		if (nfibh.sbh != nfibh.ebh)
			FUNC4(nfibh.ebh);
		FUNC4(nfibh.sbh);
	}

	return retval;
}