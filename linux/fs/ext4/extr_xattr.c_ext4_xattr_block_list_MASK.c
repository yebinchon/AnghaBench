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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_3__ {scalar_t__ i_file_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  REQ_PRIO ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,char*,...) ; 
 struct buffer_head* FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC13 (struct inode*,struct buffer_head*) ; 
 int FUNC14 (struct dentry*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct dentry *dentry, char *buffer, size_t buffer_size)
{
	struct inode *inode = FUNC8(dentry);
	struct buffer_head *bh = NULL;
	int error;

	FUNC10(inode, "buffer=%p, buffer_size=%ld",
		  buffer, (long)buffer_size);

	if (!FUNC3(inode)->i_file_acl)
		return 0;
	FUNC10(inode, "reading block %llu",
		  (unsigned long long)FUNC3(inode)->i_file_acl);
	bh = FUNC11(inode->i_sb, FUNC3(inode)->i_file_acl, REQ_PRIO);
	if (FUNC4(bh))
		return FUNC5(bh);
	FUNC9(bh, "b_count=%d, refcount=%d",
		FUNC6(&(bh->b_count)), FUNC15(FUNC1(bh)->h_refcount));
	error = FUNC13(inode, bh);
	if (error)
		goto cleanup;
	FUNC12(FUNC2(inode), bh);
	error = FUNC14(dentry, FUNC0(bh), buffer,
					buffer_size);
cleanup:
	FUNC7(bh);
	return error;
}