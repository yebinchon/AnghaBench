#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct inode {void* i_mtime; void* i_ctime; TYPE_2__* i_sb; } ;
struct TYPE_6__ {scalar_t__ impUse; int /*<<< orphan*/  extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {int dummy; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef  void* __le32 ;
struct TYPE_9__ {scalar_t__ i_alloc_type; int /*<<< orphan*/  i_location; } ;
struct TYPE_8__ {scalar_t__ s_lvid_bh; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 struct fileIdentDesc* FUNC12 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct dentry *old_dentry, struct inode *dir,
		    struct dentry *dentry)
{
	struct inode *inode = FUNC6(old_dentry);
	struct udf_fileident_bh fibh;
	struct fileIdentDesc cfi, *fi;
	int err;

	fi = FUNC12(dir, dentry, &fibh, &cfi, &err);
	if (!fi) {
		return err;
	}
	cfi.icb.extLength = FUNC3(inode->i_sb->s_blocksize);
	cfi.icb.extLocation = FUNC4(FUNC0(inode)->i_location);
	if (FUNC1(inode->i_sb)->s_lvid_bh) {
		*(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
			FUNC3(FUNC10(inode->i_sb));
	}
	FUNC13(dir, &cfi, fi, &fibh, NULL, NULL);
	if (FUNC0(dir)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
		FUNC11(dir);

	if (fibh.sbh != fibh.ebh)
		FUNC2(fibh.ebh);
	FUNC2(fibh.sbh);
	FUNC9(inode);
	inode->i_ctime = FUNC5(inode);
	FUNC11(inode);
	dir->i_ctime = dir->i_mtime = FUNC5(dir);
	FUNC11(dir);
	FUNC8(inode);
	FUNC7(dentry, inode);

	return 0;
}