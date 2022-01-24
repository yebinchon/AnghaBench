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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_inline_xattr_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_INLINE_DENTRY ; 
 int /*<<< orphan*/  GFP_F2FS_ZERO ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 

__attribute__((used)) static int FUNC19(struct inode *dir, struct page *ipage,
							void *inline_dentry)
{
	void *backup_dentry;
	int err;

	backup_dentry = FUNC8(FUNC1(dir),
				FUNC2(dir), GFP_F2FS_ZERO);
	if (!backup_dentry) {
		FUNC9(ipage, 1);
		return -ENOMEM;
	}

	FUNC15(backup_dentry, inline_dentry, FUNC2(dir));
	FUNC11(dir, ipage, 0);

	FUNC18(ipage);

	err = FUNC4(dir, backup_dentry);
	if (err)
		goto recover;

	FUNC14(ipage);

	FUNC17(dir);
	FUNC3(dir, FI_INLINE_DENTRY);

	/*
	 * should retrieve reserved space which was used to keep
	 * inline_dentry's structure for backward compatibility.
	 */
	if (!FUNC10(FUNC1(dir)) &&
			!FUNC5(dir))
		FUNC0(dir)->i_inline_xattr_size = 0;

	FUNC13(backup_dentry);
	return 0;
recover:
	FUNC14(ipage);
	FUNC12(ipage, NODE, true, true);
	FUNC15(inline_dentry, backup_dentry, FUNC2(dir));
	FUNC6(dir, 0);
	FUNC7(dir, FUNC2(dir));
	FUNC16(ipage);
	FUNC9(ipage, 1);

	FUNC13(backup_dentry);
	return err;
}