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
typedef  void* uid_t ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; TYPE_1__* i_sb; } ;
struct iattr {int /*<<< orphan*/  ia_valid; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct f2fs_inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
typedef  void* gid_t ;
typedef  int /*<<< orphan*/  attr ;
struct TYPE_2__ {int /*<<< orphan*/  s_user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_GID ; 
 int /*<<< orphan*/  ATTR_UID ; 
 struct f2fs_inode* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  SBI_QUOTA_NEED_REPAIR ; 
 int FUNC2 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct iattr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct page *page)
{
	struct f2fs_inode *raw = FUNC0(page);
	struct iattr attr;
	uid_t i_uid = FUNC4(raw->i_uid);
	gid_t i_gid = FUNC4(raw->i_gid);
	int err;

	FUNC7(&attr, 0, sizeof(attr));

	attr.ia_uid = FUNC6(inode->i_sb->s_user_ns, i_uid);
	attr.ia_gid = FUNC5(inode->i_sb->s_user_ns, i_gid);

	if (!FUNC9(attr.ia_uid, inode->i_uid))
		attr.ia_valid |= ATTR_UID;
	if (!FUNC3(attr.ia_gid, inode->i_gid))
		attr.ia_valid |= ATTR_GID;

	if (!attr.ia_valid)
		return 0;

	err = FUNC2(inode, &attr);
	if (err)
		FUNC8(FUNC1(inode), SBI_QUOTA_NEED_REPAIR);
	return err;
}