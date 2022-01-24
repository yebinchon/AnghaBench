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
 int EINVAL ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC1 (struct file*) ; 
 struct file* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int FUNC4 (struct file*,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(const char *path, void **buf, loff_t *size,
			       loff_t max_size, enum kernel_read_file_id id)
{
	struct file *file;
	int ret;

	if (!path || !*path)
		return -EINVAL;

	file = FUNC2(path, O_RDONLY, 0);
	if (FUNC0(file))
		return FUNC1(file);

	ret = FUNC4(file, buf, size, max_size, id);
	FUNC3(file);
	return ret;
}