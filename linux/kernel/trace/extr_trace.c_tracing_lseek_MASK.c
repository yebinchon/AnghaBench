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
struct file {int f_mode; int f_pos; } ;
typedef  int loff_t ;

/* Variables and functions */
 int FMODE_READ ; 
 int FUNC0 (struct file*,int,int) ; 

loff_t FUNC1(struct file *file, loff_t offset, int whence)
{
	int ret;

	if (file->f_mode & FMODE_READ)
		ret = FUNC0(file, offset, whence);
	else
		file->f_pos = ret = 0;

	return ret;
}