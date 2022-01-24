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
struct inode {TYPE_1__* i_sb; } ;
struct file {int f_pos; TYPE_2__* f_mapping; } ;
typedef  int loff_t ;
struct TYPE_4__ {struct inode* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_maxbytes; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SEEK_CUR 132 
#define  SEEK_DATA 131 
#define  SEEK_END 130 
#define  SEEK_HOLE 129 
#define  SEEK_SET 128 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct file*,int*,int) ; 
 int FUNC7 (struct file*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC8(struct file *file, loff_t offset, int whence)
{
	struct inode *inode = file->f_mapping->host;
	int ret = 0;

	FUNC1(inode);

	switch (whence) {
	case SEEK_SET:
		break;
	case SEEK_END:
		/* SEEK_END requires the OCFS2 inode lock for the file
		 * because it references the file's size.
		 */
		ret = FUNC4(inode, NULL, 0);
		if (ret < 0) {
			FUNC3(ret);
			goto out;
		}
		offset += FUNC0(inode);
		FUNC5(inode, 0);
		break;
	case SEEK_CUR:
		if (offset == 0) {
			offset = file->f_pos;
			goto out;
		}
		offset += file->f_pos;
		break;
	case SEEK_DATA:
	case SEEK_HOLE:
		ret = FUNC6(file, &offset, whence);
		if (ret)
			goto out;
		break;
	default:
		ret = -EINVAL;
		goto out;
	}

	offset = FUNC7(file, offset, inode->i_sb->s_maxbytes);

out:
	FUNC2(inode);
	if (ret)
		return ret;
	return offset;
}