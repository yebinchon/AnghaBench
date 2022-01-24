#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_dir_entry {int name_len; int /*<<< orphan*/  inode; int /*<<< orphan*/  rec_len; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;
struct TYPE_3__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int const FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,char const*,unsigned long,unsigned long long,int const,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct inode * dir,
				 struct ocfs2_dir_entry * de,
				 struct buffer_head * bh,
				 unsigned long offset)
{
	const char *error_msg = NULL;
	const int rlen = FUNC2(de->rec_len);

	if (FUNC5(rlen < FUNC0(1)))
		error_msg = "rec_len is smaller than minimal";
	else if (FUNC5(rlen % 4 != 0))
		error_msg = "rec_len % 4 != 0";
	else if (FUNC5(rlen < FUNC0(de->name_len)))
		error_msg = "rec_len is too small for name_len";
	else if (FUNC5(
		 ((char *) de - bh->b_data) + rlen > dir->i_sb->s_blocksize))
		error_msg = "directory entry across blocks";

	if (FUNC5(error_msg != NULL))
		FUNC4(ML_ERROR, "bad entry in directory #%llu: %s - "
		     "offset=%lu, inode=%llu, rec_len=%d, name_len=%d\n",
		     (unsigned long long)FUNC1(dir)->ip_blkno, error_msg,
		     offset, (unsigned long long)FUNC3(de->inode), rlen,
		     de->name_len);

	return error_msg == NULL ? 1 : 0;
}