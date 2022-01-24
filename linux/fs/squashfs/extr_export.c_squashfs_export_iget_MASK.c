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
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,long long,unsigned int) ; 
 long long FUNC4 (struct super_block*,unsigned int) ; 

__attribute__((used)) static struct dentry *FUNC5(struct super_block *sb,
	unsigned int ino_num)
{
	long long ino;
	struct dentry *dentry = FUNC0(-ENOENT);

	FUNC1("Entered squashfs_export_iget\n");

	ino = FUNC4(sb, ino_num);
	if (ino >= 0)
		dentry = FUNC2(FUNC3(sb, ino, ino_num));

	return dentry;
}