#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {scalar_t__ i_size; TYPE_1__* i_sb; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ s_maxbytes; } ;

/* Variables and functions */
 int EFBIG ; 
 int ETXTBSY ; 
 scalar_t__ FUNC0 (struct inode const*) ; 
 int /*<<< orphan*/  RLIMIT_FSIZE ; 
 unsigned long RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGXFSZ ; 
 int /*<<< orphan*/  current ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(const struct inode *inode, loff_t offset)
{
	if (inode->i_size < offset) {
		unsigned long limit;

		limit = FUNC1(RLIMIT_FSIZE);
		if (limit != RLIM_INFINITY && offset > limit)
			goto out_sig;
		if (offset > inode->i_sb->s_maxbytes)
			goto out_big;
	} else {
		/*
		 * truncation of in-use swapfiles is disallowed - it would
		 * cause subsequent swapout to scribble on the now-freed
		 * blocks.
		 */
		if (FUNC0(inode))
			return -ETXTBSY;
	}

	return 0;
out_sig:
	FUNC2(SIGXFSZ, current, 0);
out_big:
	return -EFBIG;
}