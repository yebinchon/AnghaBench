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
struct pid {int dummy; } ;
struct file {struct pid* private_data; int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 struct pid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pidfd_fops ; 

struct pid *FUNC1(const struct file *file)
{
	if (file->f_op == &pidfd_fops)
		return file->private_data;

	return FUNC0(-EBADF);
}