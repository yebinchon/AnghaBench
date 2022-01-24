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
struct inode {scalar_t__ i_size; } ;
struct file {scalar_t__ f_version; scalar_t__ f_pos; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENXIO ; 
#define  SEEK_CUR 131 
#define  SEEK_DATA 130 
#define  SEEK_END 129 
#define  SEEK_HOLE 128 
 struct inode* FUNC0 (struct file*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct file*) ; 

loff_t FUNC5(struct file *file, loff_t offset, int whence)
{
	struct inode *inode = FUNC0(file);
	loff_t retval;

	FUNC2(inode);
	switch (whence) {
		case SEEK_END:
			offset += FUNC1(inode);
			break;
		case SEEK_CUR:
			if (offset == 0) {
				retval = file->f_pos;
				goto out;
			}
			offset += file->f_pos;
			break;
		case SEEK_DATA:
			/*
			 * In the generic case the entire file is data, so as
			 * long as offset isn't at the end of the file then the
			 * offset is data.
			 */
			if (offset >= inode->i_size) {
				retval = -ENXIO;
				goto out;
			}
			break;
		case SEEK_HOLE:
			/*
			 * There is a virtual hole at the end of the file, so
			 * as long as offset isn't i_size or larger, return
			 * i_size.
			 */
			if (offset >= inode->i_size) {
				retval = -ENXIO;
				goto out;
			}
			offset = inode->i_size;
			break;
	}
	retval = -EINVAL;
	if (offset >= 0 || FUNC4(file)) {
		if (offset != file->f_pos) {
			file->f_pos = offset;
			file->f_version = 0;
		}
		retval = offset;
	}
out:
	FUNC3(inode);
	return retval;
}