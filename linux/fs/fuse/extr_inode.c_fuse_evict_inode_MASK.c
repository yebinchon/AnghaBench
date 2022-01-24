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
struct inode {int /*<<< orphan*/  i_mode; TYPE_1__* i_sb; int /*<<< orphan*/  i_data; } ;
struct fuse_inode {int /*<<< orphan*/  queued_writes; int /*<<< orphan*/  write_files; int /*<<< orphan*/ * forget; int /*<<< orphan*/  nlookup; int /*<<< orphan*/  nodeid; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_2__ {int s_flags; } ;

/* Variables and functions */
 int SB_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC4 (struct inode*) ; 
 struct fuse_inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct inode *inode)
{
	struct fuse_inode *fi = FUNC5(inode);

	FUNC8(&inode->i_data);
	FUNC2(inode);
	if (inode->i_sb->s_flags & SB_ACTIVE) {
		struct fuse_conn *fc = FUNC4(inode);
		FUNC3(fc, fi->forget, fi->nodeid, fi->nlookup);
		fi->forget = NULL;
	}
	if (FUNC0(inode->i_mode) && !FUNC6(inode)) {
		FUNC1(!FUNC7(&fi->write_files));
		FUNC1(!FUNC7(&fi->queued_writes));
	}
}