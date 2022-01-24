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
struct omfs_inode {void* i_parent; void* i_sibling; scalar_t__ i_name; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; } ;
struct buffer_head {int /*<<< orphan*/ * b_data; } ;
typedef  void* __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ OMFS_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 struct buffer_head* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC10 (struct inode*,char const*,int,int*) ; 

__attribute__((used)) static int FUNC11(struct dentry *dentry, struct inode *inode)
{
	struct inode *dir = FUNC4(dentry->d_parent);
	const char *name = dentry->d_name.name;
	int namelen = dentry->d_name.len;
	struct omfs_inode *oi;
	struct buffer_head *bh;
	u64 block;
	__be64 *entry;
	int ofs;

	/* just prepend to head of queue in proper bucket */
	bh = FUNC10(dir, name, namelen, &ofs);
	if (!bh)
		goto out;

	entry = (__be64 *) &bh->b_data[ofs];
	block = FUNC0(*entry);
	*entry = FUNC2(inode->i_ino);
	FUNC5(bh);
	FUNC1(bh);

	/* now set the sibling and parent pointers on the new inode */
	bh = FUNC9(dir->i_sb, inode->i_ino);
	if (!bh)
		goto out;

	oi = (struct omfs_inode *) bh->b_data;
	FUNC7(oi->i_name, name, namelen);
	FUNC8(oi->i_name + namelen, 0, OMFS_NAMELEN - namelen);
	oi->i_sibling = FUNC2(block);
	oi->i_parent = FUNC2(dir->i_ino);
	FUNC5(bh);
	FUNC1(bh);

	dir->i_ctime = FUNC3(dir);

	/* mark affected inodes dirty to rebuild checksums */
	FUNC6(dir);
	FUNC6(inode);
	return 0;
out:
	return -ENOMEM;
}