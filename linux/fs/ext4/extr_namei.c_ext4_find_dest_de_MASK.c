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
struct ext4_dir_entry_2 {scalar_t__ inode; int /*<<< orphan*/  rec_len; int /*<<< orphan*/  name_len; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EFSCORRUPTED ; 
 int ENOSPC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*,int /*<<< orphan*/ *,struct ext4_dir_entry_2*,struct buffer_head*,void*,int,unsigned int) ; 
 scalar_t__ FUNC2 (struct inode*,struct ext4_filename*,struct ext4_dir_entry_2*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_filename*) ; 

int FUNC5(struct inode *dir, struct inode *inode,
		      struct buffer_head *bh,
		      void *buf, int buf_size,
		      struct ext4_filename *fname,
		      struct ext4_dir_entry_2 **dest_de)
{
	struct ext4_dir_entry_2 *de;
	unsigned short reclen = FUNC0(FUNC4(fname));
	int nlen, rlen;
	unsigned int offset = 0;
	char *top;

	de = (struct ext4_dir_entry_2 *)buf;
	top = buf + buf_size - reclen;
	while ((char *) de <= top) {
		if (FUNC1(dir, NULL, de, bh,
					 buf, buf_size, offset))
			return -EFSCORRUPTED;
		if (FUNC2(dir, fname, de))
			return -EEXIST;
		nlen = FUNC0(de->name_len);
		rlen = FUNC3(de->rec_len, buf_size);
		if ((de->inode ? rlen - nlen : rlen) >= reclen)
			break;
		de = (struct ext4_dir_entry_2 *)((char *)de + rlen);
		offset += rlen;
	}
	if ((char *) de > top)
		return -ENOSPC;

	*dest_de = de;
	return 0;
}