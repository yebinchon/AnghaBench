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
struct inode {unsigned int i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_dir_entry_2 {int name_len; int /*<<< orphan*/  name; void* rec_len; void* inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  S_IFDIR ; 
 void* FUNC1 (unsigned int) ; 
 struct ext4_dir_entry_2* FUNC2 (struct ext4_dir_entry_2*,int) ; 
 void* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ext4_dir_entry_2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

struct ext4_dir_entry_2 *FUNC6(struct inode *inode,
			  struct ext4_dir_entry_2 *de,
			  int blocksize, int csum_size,
			  unsigned int parent_ino, int dotdot_real_len)
{
	de->inode = FUNC1(inode->i_ino);
	de->name_len = 1;
	de->rec_len = FUNC3(FUNC0(de->name_len),
					   blocksize);
	FUNC5(de->name, ".");
	FUNC4(inode->i_sb, de, S_IFDIR);

	de = FUNC2(de, blocksize);
	de->inode = FUNC1(parent_ino);
	de->name_len = 2;
	if (!dotdot_real_len)
		de->rec_len = FUNC3(blocksize -
					(csum_size + FUNC0(1)),
					blocksize);
	else
		de->rec_len = FUNC3(
				FUNC0(de->name_len), blocksize);
	FUNC5(de->name, "..");
	FUNC4(inode->i_sb, de, S_IFDIR);

	return FUNC2(de, blocksize);
}