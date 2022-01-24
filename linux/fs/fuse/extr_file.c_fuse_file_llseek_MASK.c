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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  SEEK_CUR 132 
#define  SEEK_DATA 131 
#define  SEEK_END 130 
#define  SEEK_HOLE 129 
#define  SEEK_SET 128 
 struct inode* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

__attribute__((used)) static loff_t FUNC6(struct file *file, loff_t offset, int whence)
{
	loff_t retval;
	struct inode *inode = FUNC0(file);

	switch (whence) {
	case SEEK_SET:
	case SEEK_CUR:
		 /* No i_mutex protection necessary for SEEK_CUR and SEEK_SET */
		retval = FUNC3(file, offset, whence);
		break;
	case SEEK_END:
		FUNC4(inode);
		retval = FUNC2(inode, file);
		if (!retval)
			retval = FUNC3(file, offset, whence);
		FUNC5(inode);
		break;
	case SEEK_HOLE:
	case SEEK_DATA:
		FUNC4(inode);
		retval = FUNC1(file, offset, whence);
		FUNC5(inode);
		break;
	default:
		retval = -EINVAL;
	}

	return retval;
}