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
struct stat {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  output_fd ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int) ; 
 int FUNC4 (char*,struct stat*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static int FUNC6(void)
{
	unsigned int size;
	char *path;
	struct stat st;
	int ret, err = 0;

	path = FUNC0("printk_formats");
	if (!path) {
		FUNC1("can't get tracing/printk_formats");
		return -ENOMEM;
	}

	ret = FUNC4(path, &st);
	if (ret < 0) {
		/* not found */
		size = 0;
		if (FUNC5(output_fd, &size, 4) != 4)
			err = -EIO;
		goto out;
	}
	err = FUNC3(path, 4);

out:
	FUNC2(path);
	return err;
}