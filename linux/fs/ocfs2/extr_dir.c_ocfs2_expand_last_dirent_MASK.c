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
struct super_block {unsigned int s_blocksize; } ;
struct ocfs2_dir_entry {int /*<<< orphan*/  rec_len; } ;
struct inode {struct super_block* i_sb; } ;

/* Variables and functions */
 unsigned int OCFS2_DIR_MIN_REC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct super_block*) ; 
 unsigned int FUNC3 (struct ocfs2_dir_entry*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 

__attribute__((used)) static unsigned int FUNC5(char *start, unsigned int old_size,
					     struct inode *dir)
{
	struct super_block *sb = dir->i_sb;
	struct ocfs2_dir_entry *de;
	struct ocfs2_dir_entry *prev_de;
	char *de_buf, *limit;
	unsigned int new_size = sb->s_blocksize;
	unsigned int bytes, this_hole;
	unsigned int largest_hole = 0;

	if (FUNC4(dir))
		new_size = FUNC2(sb);

	bytes = new_size - old_size;

	limit = start + old_size;
	de_buf = start;
	de = (struct ocfs2_dir_entry *)de_buf;
	do {
		this_hole = FUNC3(de);
		if (this_hole > largest_hole)
			largest_hole = this_hole;

		prev_de = de;
		de_buf += FUNC1(de->rec_len);
		de = (struct ocfs2_dir_entry *)de_buf;
	} while (de_buf < limit);

	FUNC0(&prev_de->rec_len, bytes);

	/* We need to double check this after modification of the final
	 * dirent. */
	this_hole = FUNC3(prev_de);
	if (this_hole > largest_hole)
		largest_hole = this_hole;

	if (largest_hole >= OCFS2_DIR_MIN_REC_LEN)
		return largest_hole;
	return 0;
}