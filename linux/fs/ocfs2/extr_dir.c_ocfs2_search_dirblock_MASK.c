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
struct ocfs2_dir_entry {int /*<<< orphan*/  rec_len; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,unsigned long) ; 
 scalar_t__ FUNC2 (int,char const*,struct ocfs2_dir_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(struct buffer_head *bh,
					struct inode *dir,
					const char *name, int namelen,
					unsigned long offset,
					char *first_de,
					unsigned int bytes,
					struct ocfs2_dir_entry **res_dir)
{
	struct ocfs2_dir_entry *de;
	char *dlimit, *de_buf;
	int de_len;
	int ret = 0;

	de_buf = first_de;
	dlimit = de_buf + bytes;

	while (de_buf < dlimit) {
		/* this code is executed quadratically often */
		/* do minimal checking `by hand' */

		de = (struct ocfs2_dir_entry *) de_buf;

		if (de_buf + namelen <= dlimit &&
		    FUNC2(namelen, name, de)) {
			/* found a match - just to be sure, do a full check */
			if (!FUNC1(dir, de, bh, offset)) {
				ret = -1;
				goto bail;
			}
			*res_dir = de;
			ret = 1;
			goto bail;
		}

		/* prevent looping on a bad block */
		de_len = FUNC0(de->rec_len);
		if (de_len <= 0) {
			ret = -1;
			goto bail;
		}

		de_buf += de_len;
		offset += de_len;
	}

bail:
	FUNC3(ret);
	return ret;
}