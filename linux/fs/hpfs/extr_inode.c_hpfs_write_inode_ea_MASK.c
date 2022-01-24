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
struct inode {int i_mode; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct hpfs_inode_info {int i_ea_uid; int i_ea_gid; int i_ea_mode; } ;
struct fnode {int dummy; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {int sb_eas; int sb_mode; int /*<<< orphan*/  sb_gid; int /*<<< orphan*/  sb_uid; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hpfs_inode_info* FUNC6 (struct inode*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct fnode*,char*,char*,int) ; 
 int FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct inode *i, struct fnode *fnode)
{
	struct hpfs_inode_info *hpfs_inode = FUNC6(i);
	/*if (le32_to_cpu(fnode->acl_size_l) || le16_to_cpu(fnode->acl_size_s)) {
		   Some unknown structures like ACL may be in fnode,
		   we'd better not overwrite them
		hpfs_error(i->i_sb, "fnode %08x has some unknown HPFS386 structures", i->i_ino);
	} else*/ if (FUNC7(i->i_sb)->sb_eas >= 2) {
		__le32 ea;
		if (!FUNC12(i->i_uid, FUNC7(i->i_sb)->sb_uid) || hpfs_inode->i_ea_uid) {
			ea = FUNC4(FUNC10(i));
			FUNC8(i, fnode, "UID", (char*)&ea, 2);
			hpfs_inode->i_ea_uid = 1;
		}
		if (!FUNC5(i->i_gid, FUNC7(i->i_sb)->sb_gid) || hpfs_inode->i_ea_gid) {
			ea = FUNC4(FUNC9(i));
			FUNC8(i, fnode, "GID", (char *)&ea, 2);
			hpfs_inode->i_ea_gid = 1;
		}
		if (!FUNC3(i->i_mode))
			if ((i->i_mode != ((FUNC7(i->i_sb)->sb_mode & ~(FUNC2(i->i_mode) ? 0 : 0111))
			  | (FUNC2(i->i_mode) ? S_IFDIR : S_IFREG))
			  && i->i_mode != ((FUNC7(i->i_sb)->sb_mode & ~(FUNC2(i->i_mode) ? 0222 : 0333))
			  | (FUNC2(i->i_mode) ? S_IFDIR : S_IFREG))) || hpfs_inode->i_ea_mode) {
				ea = FUNC4(i->i_mode);
				/* sick, but legal */
				FUNC8(i, fnode, "MODE", (char *)&ea, 2);
				hpfs_inode->i_ea_mode = 1;
			}
		if (FUNC0(i->i_mode) || FUNC1(i->i_mode)) {
			ea = FUNC4(FUNC11(i->i_rdev));
			FUNC8(i, fnode, "DEV", (char *)&ea, 4);
		}
	}
}