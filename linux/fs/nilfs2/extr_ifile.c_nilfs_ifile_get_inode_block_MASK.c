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
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,char*,int,unsigned long) ; 
 int FUNC3 (struct inode*,scalar_t__,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct inode *ifile, ino_t ino,
				struct buffer_head **out_bh)
{
	struct super_block *sb = ifile->i_sb;
	int err;

	if (FUNC4(!FUNC0(sb, ino))) {
		FUNC1(sb, "bad inode number: %lu", (unsigned long)ino);
		return -EINVAL;
	}

	err = FUNC3(ifile, ino, 0, out_bh);
	if (FUNC4(err))
		FUNC2(sb, KERN_WARNING, "error %d reading inode: ino=%lu",
			  err, (unsigned long)ino);
	return err;
}