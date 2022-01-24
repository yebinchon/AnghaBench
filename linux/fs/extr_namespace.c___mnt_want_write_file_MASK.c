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
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;

/* Variables and functions */
 int FMODE_WRITER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct file *file)
{
	if (!(file->f_mode & FMODE_WRITER))
		return FUNC0(file->f_path.mnt);
	else
		return FUNC1(file->f_path.mnt);
}