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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct file*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kernel_post_read_file ; 

int FUNC2(struct file *file, char *buf, loff_t size,
				   enum kernel_read_file_id id)
{
	int ret;

	ret = FUNC0(kernel_post_read_file, 0, file, buf, size, id);
	if (ret)
		return ret;
	return FUNC1(file, buf, size, id);
}