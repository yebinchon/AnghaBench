#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_3__* i_sb; } ;
struct file {int dummy; } ;
struct ext4_dir_entry_2 {int name_len; int /*<<< orphan*/  inode; int /*<<< orphan*/  rec_len; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_5__ {TYPE_1__* s_es; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_inodes_count; } ;

/* Variables and functions */
 int const FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*,unsigned int,scalar_t__,int const,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*,unsigned int,scalar_t__,int const,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(const char *function, unsigned int line,
			   struct inode *dir, struct file *filp,
			   struct ext4_dir_entry_2 *de,
			   struct buffer_head *bh, char *buf, int size,
			   unsigned int offset)
{
	const char *error_msg = NULL;
	const int rlen = FUNC4(de->rec_len,
						dir->i_sb->s_blocksize);

	if (FUNC6(rlen < FUNC0(1)))
		error_msg = "rec_len is smaller than minimal";
	else if (FUNC6(rlen % 4 != 0))
		error_msg = "rec_len % 4 != 0";
	else if (FUNC6(rlen < FUNC0(de->name_len)))
		error_msg = "rec_len is too small for name_len";
	else if (FUNC6(((char *) de - buf) + rlen > size))
		error_msg = "directory entry overrun";
	else if (FUNC6(FUNC5(de->inode) >
			FUNC5(FUNC1(dir->i_sb)->s_es->s_inodes_count)))
		error_msg = "inode out of bounds";
	else
		return 0;

	if (filp)
		FUNC2(filp, function, line, bh->b_blocknr,
				"bad entry in directory: %s - offset=%u, "
				"inode=%u, rec_len=%d, name_len=%d, size=%d",
				error_msg, offset, FUNC5(de->inode),
				rlen, de->name_len, size);
	else
		FUNC3(dir, function, line, bh->b_blocknr,
				"bad entry in directory: %s - offset=%u, "
				"inode=%u, rec_len=%d, name_len=%d, size=%d",
				 error_msg, offset, FUNC5(de->inode),
				 rlen, de->name_len, size);

	return 1;
}