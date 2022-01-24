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
typedef  int /*<<< orphan*/  u64 ;
struct omfs_inode {int /*<<< orphan*/  i_sibling; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * b_data; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;
struct buffer_head {int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC9 (struct inode*,char const*,int,int*) ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (struct inode*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dentry *dentry)
{
	struct inode *dir = FUNC4(dentry->d_parent);
	struct inode *dirty;
	const char *name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct omfs_inode *oi;
	struct buffer_head *bh, *bh2;
	__be64 *entry, next;
	u64 block, prev;
	int ofs;
	int err = -ENOMEM;

	/* delete the proper node in the bucket's linked list */
	bh = FUNC9(dir, name, namelen, &ofs);
	if (!bh)
		goto out;

	entry = (__be64 *) &bh->b_data[ofs];
	block = FUNC2(*entry);

	bh2 = FUNC11(dir, block, name, namelen, &prev);
	if (FUNC0(bh2)) {
		err = FUNC1(bh2);
		goto out_free_bh;
	}

	oi = (struct omfs_inode *) bh2->b_data;
	next = oi->i_sibling;
	FUNC3(bh2);

	if (prev != ~0) {
		/* found in middle of list, get list ptr */
		FUNC3(bh);
		bh = FUNC8(dir->i_sb, prev);
		if (!bh)
			goto out;

		oi = (struct omfs_inode *) bh->b_data;
		entry = &oi->i_sibling;
	}

	*entry = next;
	FUNC6(bh);

	if (prev != ~0) {
		dirty = FUNC10(dir->i_sb, prev);
		if (!FUNC0(dirty)) {
			FUNC7(dirty);
			FUNC5(dirty);
		}
	}

	err = 0;
out_free_bh:
	FUNC3(bh);
out:
	return err;
}