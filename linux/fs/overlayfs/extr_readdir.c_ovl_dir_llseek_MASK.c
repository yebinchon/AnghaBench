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
struct ovl_dir_file {scalar_t__ cache; TYPE_1__* realfile; scalar_t__ is_real; } ;
struct file {int /*<<< orphan*/  f_pos; struct ovl_dir_file* private_data; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  f_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  SEEK_CUR 129 
#define  SEEK_SET 128 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct ovl_dir_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static loff_t FUNC6(struct file *file, loff_t offset, int origin)
{
	loff_t res;
	struct ovl_dir_file *od = file->private_data;

	FUNC1(FUNC0(file));
	if (!file->f_pos)
		FUNC3(file);

	if (od->is_real) {
		res = FUNC5(od->realfile, offset, origin);
		file->f_pos = od->realfile->f_pos;
	} else {
		res = -EINVAL;

		switch (origin) {
		case SEEK_CUR:
			offset += file->f_pos;
			break;
		case SEEK_SET:
			break;
		default:
			goto out_unlock;
		}
		if (offset < 0)
			goto out_unlock;

		if (offset != file->f_pos) {
			file->f_pos = offset;
			if (od->cache)
				FUNC4(od, offset);
		}
		res = offset;
	}
out_unlock:
	FUNC2(FUNC0(file));

	return res;
}