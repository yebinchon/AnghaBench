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
struct file {int f_mode; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct file*) ; 

int FUNC2(struct inode *inode, struct file *file)
{
	int error;

	error = FUNC1(inode, file);
	if (!error && (file->f_mode & FMODE_WRITE))
		error = FUNC0(inode);
	return error;
}