#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {int s_blocksize; int s_blocksize_bits; char* s_fs_info; int /*<<< orphan*/ * s_root; int /*<<< orphan*/  s_maxbytes; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HOSTFS_SUPER_MAGIC ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  hostfs_sbops ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 (struct super_block*) ; 
 int FUNC9 (struct inode*,char*) ; 
 char* root_ino ; 
 int /*<<< orphan*/  simple_dentry_operations ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, void *d, int silent)
{
	struct inode *root_inode;
	char *host_root_path, *req_root = d;
	int err;

	sb->s_blocksize = 1024;
	sb->s_blocksize_bits = 10;
	sb->s_magic = HOSTFS_SUPER_MAGIC;
	sb->s_op = &hostfs_sbops;
	sb->s_d_op = &simple_dentry_operations;
	sb->s_maxbytes = MAX_LFS_FILESIZE;

	/* NULL is printed as <NULL> by sprintf: avoid that. */
	if (req_root == NULL)
		req_root = "";

	err = -ENOMEM;
	sb->s_fs_info = host_root_path =
		FUNC7(FUNC11(root_ino) + FUNC11(req_root) + 2, GFP_KERNEL);
	if (host_root_path == NULL)
		goto out;

	FUNC10(host_root_path, "%s/%s", root_ino, req_root);

	root_inode = FUNC8(sb);
	if (!root_inode)
		goto out;

	err = FUNC9(root_inode, host_root_path);
	if (err)
		goto out_put;

	if (FUNC2(root_inode->i_mode)) {
		char *name = FUNC4(host_root_path);
		if (FUNC0(name)) {
			err = FUNC1(name);
			goto out_put;
		}
		err = FUNC9(root_inode, name);
		FUNC6(name);
		if (err)
			goto out_put;
	}

	err = -ENOMEM;
	sb->s_root = FUNC3(root_inode);
	if (sb->s_root == NULL)
		goto out;

	return 0;

out_put:
	FUNC5(root_inode);
out:
	return err;
}