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
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,struct stat*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int) ; 

__attribute__((used)) static char *FUNC8(const char *file, unsigned int *klen)
{
	int fd, ret, len;
	struct stat fi;
	char *buff;

	fd = FUNC6(file, O_RDONLY);
	if (fd < 0)
		return NULL;

	ret = FUNC3(fd, &fi);
	if (ret < 0 || !FUNC0(fi.st_mode))
		goto out;

	len = fi.st_size + 1;
	buff = FUNC4(len);
	if (!buff)
		goto out;

	FUNC5(buff, 0, len);
	ret = FUNC7(fd, buff, len - 1);
	if (ret <= 0)
		goto out_free;

	FUNC1(fd);
	*klen = ret;
	return buff;
out_free:
	FUNC2(buff);
out:
	FUNC1(fd);
	return NULL;
}