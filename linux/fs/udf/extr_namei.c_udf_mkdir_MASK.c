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
typedef  int umode_t ;
struct udf_inode_info {int i_unique; int /*<<< orphan*/  i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; TYPE_1__* i_sb; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct TYPE_4__ {scalar_t__ impUse; void* extLocation; void* extLength; } ;
struct fileIdentDesc {int fileCharacteristics; TYPE_2__ icb; } ;
struct dentry {int dummy; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef  void* __le32 ;
struct TYPE_3__ {int s_blocksize; } ;

/* Variables and functions */
 int FID_FILE_CHAR_DIRECTORY ; 
 int FID_FILE_CHAR_PARENT ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFDIR ; 
 struct udf_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 
 struct fileIdentDesc* FUNC14 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 int /*<<< orphan*/  udf_dir_inode_operations ; 
 int /*<<< orphan*/  udf_dir_operations ; 
 struct inode* FUNC15 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct inode *inode;
	struct udf_fileident_bh fibh;
	struct fileIdentDesc cfi, *fi;
	int err;
	struct udf_inode_info *dinfo = FUNC2(dir);
	struct udf_inode_info *iinfo;

	inode = FUNC15(dir, S_IFDIR | mode);
	if (FUNC0(inode))
		return FUNC1(inode);

	iinfo = FUNC2(inode);
	inode->i_op = &udf_dir_inode_operations;
	inode->i_fop = &udf_dir_operations;
	fi = FUNC14(inode, NULL, &fibh, &cfi, &err);
	if (!fi) {
		FUNC11(inode);
		FUNC9(inode);
		goto out;
	}
	FUNC13(inode, 2);
	cfi.icb.extLength = FUNC5(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC6(dinfo->i_location);
	*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
		FUNC5(dinfo->i_unique & 0x00000000FFFFFFFFUL);
	cfi.fileCharacteristics =
			FID_FILE_CHAR_DIRECTORY | FID_FILE_CHAR_PARENT;
	FUNC16(inode, &cfi, fi, &fibh, NULL, NULL);
	FUNC3(fibh.sbh);
	FUNC12(inode);

	fi = FUNC14(dir, dentry, &fibh, &cfi, &err);
	if (!fi) {
		FUNC4(inode);
		FUNC12(inode);
		FUNC9(inode);
		goto out;
	}
	cfi.icb.extLength = FUNC5(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC6(iinfo->i_location);
	*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
		FUNC5(iinfo->i_unique & 0x00000000FFFFFFFFUL);
	cfi.fileCharacteristics |= FID_FILE_CHAR_DIRECTORY;
	FUNC16(dir, &cfi, fi, &fibh, NULL, NULL);
	FUNC10(dir);
	dir->i_ctime = dir->i_mtime = FUNC7(dir);
	FUNC12(dir);
	FUNC8(dentry, inode);
	if (fibh.sbh != fibh.ebh)
		FUNC3(fibh.ebh);
	FUNC3(fibh.sbh);
	err = 0;

out:
	return err;
}