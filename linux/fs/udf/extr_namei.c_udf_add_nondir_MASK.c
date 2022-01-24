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
struct udf_inode_info {int i_unique; int /*<<< orphan*/  i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; TYPE_1__* i_sb; } ;
struct TYPE_4__ {scalar_t__ impUse; int /*<<< orphan*/  extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_2__ icb; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef  void* __le32 ;
struct TYPE_3__ {int s_blocksize; } ;

/* Variables and functions */
 struct udf_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct fileIdentDesc* FUNC10 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct dentry *dentry, struct inode *inode)
{
	struct udf_inode_info *iinfo = FUNC0(inode);
	struct inode *dir = FUNC5(dentry->d_parent);
	struct udf_fileident_bh fibh;
	struct fileIdentDesc cfi, *fi;
	int err;

	fi = FUNC10(dir, dentry, &fibh, &cfi, &err);
	if (FUNC12(!fi)) {
		FUNC8(inode);
		FUNC7(inode);
		return err;
	}
	cfi.icb.extLength = FUNC2(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC3(iinfo->i_location);
	*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
		FUNC2(iinfo->i_unique & 0x00000000FFFFFFFFUL);
	FUNC11(dir, &cfi, fi, &fibh, NULL, NULL);
	dir->i_ctime = dir->i_mtime = FUNC4(dir);
	FUNC9(dir);
	if (fibh.sbh != fibh.ebh)
		FUNC1(fibh.ebh);
	FUNC1(fibh.sbh);
	FUNC6(dentry, inode);

	return 0;
}