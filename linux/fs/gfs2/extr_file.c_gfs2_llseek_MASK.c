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
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
#define  SEEK_CUR 132 
#define  SEEK_DATA 131 
#define  SEEK_END 130 
#define  SEEK_HOLE 129 
#define  SEEK_SET 128 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC6(struct file *file, loff_t offset, int whence)
{
	struct gfs2_inode *ip = FUNC0(file->f_mapping->host);
	struct gfs2_holder i_gh;
	loff_t error;

	switch (whence) {
	case SEEK_END:
		error = FUNC3(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY,
					   &i_gh);
		if (!error) {
			error = FUNC1(file, offset, whence);
			FUNC2(&i_gh);
		}
		break;

	case SEEK_DATA:
		error = FUNC4(file, offset);
		break;

	case SEEK_HOLE:
		error = FUNC5(file, offset);
		break;

	case SEEK_CUR:
	case SEEK_SET:
		/*
		 * These don't reference inode->i_size and don't depend on the
		 * block mapping, so we don't need the glock.
		 */
		error = FUNC1(file, offset, whence);
		break;
	default:
		error = -EINVAL;
	}

	return error;
}