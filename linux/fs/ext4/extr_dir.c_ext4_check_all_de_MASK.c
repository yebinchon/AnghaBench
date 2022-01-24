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
struct ext4_dir_entry_2 {int /*<<< orphan*/  rec_len; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 scalar_t__ FUNC0 (struct inode*,int /*<<< orphan*/ *,struct ext4_dir_entry_2*,struct buffer_head*,void*,int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(struct inode *dir, struct buffer_head *bh, void *buf,
		      int buf_size)
{
	struct ext4_dir_entry_2 *de;
	int rlen;
	unsigned int offset = 0;
	char *top;

	de = (struct ext4_dir_entry_2 *)buf;
	top = buf + buf_size;
	while ((char *) de < top) {
		if (FUNC0(dir, NULL, de, bh,
					 buf, buf_size, offset))
			return -EFSCORRUPTED;
		rlen = FUNC1(de->rec_len, buf_size);
		de = (struct ext4_dir_entry_2 *)((char *)de + rlen);
		offset += rlen;
	}
	if ((char *) de > top)
		return -EFSCORRUPTED;

	return 0;
}