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
struct ocfs2_dir_entry {int /*<<< orphan*/  rec_len; } ;
struct buffer_head {char* b_data; } ;

/* Variables and functions */
 int OCFS2_DIR_MIN_REC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct super_block*) ; 
 int FUNC2 (struct ocfs2_dir_entry*) ; 
 scalar_t__ FUNC3 (struct buffer_head*,struct super_block*) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb,
				  struct buffer_head *dirblock_bh)
{
	int size, this_hole, largest_hole = 0;
	char *trailer, *de_buf, *limit, *start = dirblock_bh->b_data;
	struct ocfs2_dir_entry *de;

	trailer = (char *)FUNC3(dirblock_bh, sb);
	size = FUNC1(sb);
	limit = start + size;
	de_buf = start;
	de = (struct ocfs2_dir_entry *)de_buf;
	do {
		if (de_buf != trailer) {
			this_hole = FUNC2(de);
			if (this_hole > largest_hole)
				largest_hole = this_hole;
		}

		de_buf += FUNC0(de->rec_len);
		de = (struct ocfs2_dir_entry *)de_buf;
	} while (de_buf < limit);

	if (largest_hole >= OCFS2_DIR_MIN_REC_LEN)
		return largest_hole;
	return 0;
}