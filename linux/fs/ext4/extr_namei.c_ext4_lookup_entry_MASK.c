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
struct inode {int dummy; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct dentry {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct buffer_head* FUNC0 (int) ; 
 struct buffer_head* FUNC1 (struct inode*,struct ext4_filename*,struct ext4_dir_entry_2**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_filename*) ; 
 int FUNC3 (struct inode*,struct dentry*,struct ext4_filename*) ; 

__attribute__((used)) static struct buffer_head *FUNC4(struct inode *dir,
					     struct dentry *dentry,
					     struct ext4_dir_entry_2 **res_dir)
{
	int err;
	struct ext4_filename fname;
	struct buffer_head *bh;

	err = FUNC3(dir, dentry, &fname);
	if (err == -ENOENT)
		return NULL;
	if (err)
		return FUNC0(err);

	bh = FUNC1(dir, &fname, res_dir, NULL);

	FUNC2(&fname);
	return bh;
}