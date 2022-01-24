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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  name; int /*<<< orphan*/  name_len; scalar_t__ inode; int /*<<< orphan*/  file_type; void* rec_len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_FT_UNKNOWN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ext4_dir_entry_2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_filename*) ; 
 int /*<<< orphan*/  FUNC6 (struct ext4_filename*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct inode *inode,
			struct ext4_dir_entry_2 *de,
			int buf_size,
			struct ext4_filename *fname)
{

	int nlen, rlen;

	nlen = FUNC0(de->name_len);
	rlen = FUNC2(de->rec_len, buf_size);
	if (de->inode) {
		struct ext4_dir_entry_2 *de1 =
			(struct ext4_dir_entry_2 *)((char *)de + nlen);
		de1->rec_len = FUNC3(rlen - nlen, buf_size);
		de->rec_len = FUNC3(nlen, buf_size);
		de = de1;
	}
	de->file_type = EXT4_FT_UNKNOWN;
	de->inode = FUNC1(inode->i_ino);
	FUNC4(inode->i_sb, de, inode->i_mode);
	de->name_len = FUNC5(fname);
	FUNC7(de->name, FUNC6(fname), FUNC5(fname));
}