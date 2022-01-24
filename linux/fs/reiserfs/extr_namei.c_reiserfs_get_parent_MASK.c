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
struct reiserfs_dir_entry {int /*<<< orphan*/  de_dir_id; int /*<<< orphan*/ * de_gen_number_bit_string; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct cpu_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NAME_FOUND ; 
 struct inode* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  path_to_entry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,char*,int,int /*<<< orphan*/ *,struct reiserfs_dir_entry*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct dentry *FUNC9(struct dentry *child)
{
	int retval;
	struct inode *inode = NULL;
	struct reiserfs_dir_entry de;
	FUNC1(path_to_entry);
	struct inode *dir = FUNC2(child);

	if (dir->i_nlink == 0) {
		return FUNC0(-ENOENT);
	}
	de.de_gen_number_bit_string = NULL;

	FUNC7(dir->i_sb);
	retval = FUNC5(dir, "..", 2, &path_to_entry, &de);
	FUNC4(&path_to_entry);
	if (retval != NAME_FOUND) {
		FUNC8(dir->i_sb);
		return FUNC0(-ENOENT);
	}
	inode = FUNC6(dir->i_sb, (struct cpu_key *)&de.de_dir_id);
	FUNC8(dir->i_sb);

	return FUNC3(inode);
}