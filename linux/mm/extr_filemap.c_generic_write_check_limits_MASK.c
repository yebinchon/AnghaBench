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
struct inode {TYPE_2__* i_sb; } ;
struct file {int f_flags; TYPE_1__* f_mapping; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int EFBIG ; 
 scalar_t__ MAX_NON_LFS ; 
 int O_LARGEFILE ; 
 int /*<<< orphan*/  RLIMIT_FSIZE ; 
 scalar_t__ RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGXFSZ ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct file *file, loff_t pos,
				      loff_t *count)
{
	struct inode *inode = file->f_mapping->host;
	loff_t max_size = inode->i_sb->s_maxbytes;
	loff_t limit = FUNC1(RLIMIT_FSIZE);

	if (limit != RLIM_INFINITY) {
		if (pos >= limit) {
			FUNC2(SIGXFSZ, current, 0);
			return -EFBIG;
		}
		*count = FUNC0(*count, limit - pos);
	}

	if (!(file->f_flags & O_LARGEFILE))
		max_size = MAX_NON_LFS;

	if (FUNC3(pos >= max_size))
		return -EFBIG;

	*count = FUNC0(*count, max_size - pos);

	return 0;
}