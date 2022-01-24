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
struct TYPE_4__ {scalar_t__ mnt; } ;
struct file {TYPE_2__* f_op; TYPE_1__ f_path; } ;
typedef  int loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {int (* remap_file_range ) (struct file*,int,struct file*,int,int,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EISDIR ; 
 int EPERM ; 
 int EXDEV ; 
 unsigned int REMAP_FILE_CAN_SHORTEN ; 
 unsigned int REMAP_FILE_DEDUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 TYPE_3__* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int FUNC5 (struct file*) ; 
 int FUNC6 (struct file*,int,int,int) ; 
 int FUNC7 (struct file*,int,struct file*,int,int,unsigned int) ; 

loff_t FUNC8(struct file *src_file, loff_t src_pos,
				 struct file *dst_file, loff_t dst_pos,
				 loff_t len, unsigned int remap_flags)
{
	loff_t ret;

	FUNC1(remap_flags & ~(REMAP_FILE_DEDUP |
				     REMAP_FILE_CAN_SHORTEN));

	ret = FUNC5(dst_file);
	if (ret)
		return ret;

	ret = FUNC6(dst_file, dst_pos, len, true);
	if (ret < 0)
		goto out_drop_write;

	ret = -EPERM;
	if (!FUNC2(dst_file))
		goto out_drop_write;

	ret = -EXDEV;
	if (src_file->f_path.mnt != dst_file->f_path.mnt)
		goto out_drop_write;

	ret = -EISDIR;
	if (FUNC0(FUNC3(dst_file)->i_mode))
		goto out_drop_write;

	ret = -EINVAL;
	if (!dst_file->f_op->remap_file_range)
		goto out_drop_write;

	if (len == 0) {
		ret = 0;
		goto out_drop_write;
	}

	ret = dst_file->f_op->remap_file_range(src_file, src_pos, dst_file,
			dst_pos, len, remap_flags | REMAP_FILE_DEDUP);
out_drop_write:
	FUNC4(dst_file);

	return ret;
}