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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  page_size ; 
 size_t FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,size_t) ; 

__attribute__((used)) static int FUNC5(int from, int to)
{
	char *buf_from;
	char *buf_to;
	ssize_t ret;
	size_t len;
	int err = -1;

	buf_from = FUNC1(page_size);
	buf_to = FUNC1(page_size);
	if (!buf_from || !buf_to)
		goto out;

	while (1) {
		/* Use read because mmap won't work on proc files */
		ret = FUNC3(from, buf_from, page_size);
		if (ret < 0)
			goto out;

		if (!ret)
			break;

		len = ret;

		if (FUNC4(to, buf_to, len) != (int)len)
			goto out;

		if (FUNC2(buf_from, buf_to, len))
			goto out;
	}

	err = 0;
out:
	FUNC0(buf_to);
	FUNC0(buf_from);
	return err;
}