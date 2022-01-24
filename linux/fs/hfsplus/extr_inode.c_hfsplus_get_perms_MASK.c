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
typedef  int u16 ;
struct inode {int i_mode; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_sb; } ;
struct hfsplus_sb_info {int umask; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct hfsplus_perm {int rootflags; int /*<<< orphan*/  userflags; int /*<<< orphan*/  group; int /*<<< orphan*/  owner; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  userflags; } ;

/* Variables and functions */
 int HFSPLUS_FLG_APPEND ; 
 int HFSPLUS_FLG_IMMUTABLE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct hfsplus_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_APPEND ; 
 int S_IALLUGO ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  S_IMMUTABLE ; 
 int S_IRUGO ; 
 int S_IRWXUGO ; 
 int S_IWUGO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct inode *inode,
		struct hfsplus_perm *perms, int dir)
{
	struct hfsplus_sb_info *sbi = FUNC1(inode->i_sb);
	u16 mode;

	mode = FUNC2(perms->mode);

	FUNC7(inode, FUNC3(perms->owner));
	if (!FUNC6(inode) && !mode)
		inode->i_uid = sbi->uid;

	FUNC5(inode, FUNC3(perms->group));
	if (!FUNC4(inode) && !mode)
		inode->i_gid = sbi->gid;

	if (dir) {
		mode = mode ? (mode & S_IALLUGO) : (S_IRWXUGO & ~(sbi->umask));
		mode |= S_IFDIR;
	} else if (!mode)
		mode = S_IFREG | ((S_IRUGO|S_IWUGO) & ~(sbi->umask));
	inode->i_mode = mode;

	FUNC0(inode)->userflags = perms->userflags;
	if (perms->rootflags & HFSPLUS_FLG_IMMUTABLE)
		inode->i_flags |= S_IMMUTABLE;
	else
		inode->i_flags &= ~S_IMMUTABLE;
	if (perms->rootflags & HFSPLUS_FLG_APPEND)
		inode->i_flags |= S_APPEND;
	else
		inode->i_flags &= ~S_APPEND;
}