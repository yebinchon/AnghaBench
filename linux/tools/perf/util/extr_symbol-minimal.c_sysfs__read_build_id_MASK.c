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
struct stat {size_t st_size; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 void* FUNC3 (size_t) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,void*,size_t) ; 
 int FUNC6 (void*,size_t,void*,size_t,int) ; 

int FUNC7(const char *filename, void *build_id, size_t size)
{
	int fd;
	int ret = -1;
	struct stat stbuf;
	size_t buf_size;
	void *buf;

	fd = FUNC4(filename, O_RDONLY);
	if (fd < 0)
		return -1;

	if (FUNC2(fd, &stbuf) < 0)
		goto out;

	buf_size = stbuf.st_size;
	buf = FUNC3(buf_size);
	if (buf == NULL)
		goto out;

	if (FUNC5(fd, buf, buf_size) != (ssize_t) buf_size)
		goto out_free;

	ret = FUNC6(buf, buf_size, build_id, size, false);
out_free:
	FUNC1(buf);
out:
	FUNC0(fd);
	return ret;
}