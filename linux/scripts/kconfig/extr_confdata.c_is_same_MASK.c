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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ FUNC0 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct stat*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(const char *file1, const char *file2)
{
	int fd1, fd2;
	struct stat st1, st2;
	void *map1, *map2;
	bool ret = false;

	fd1 = FUNC4(file1, O_RDONLY);
	if (fd1 < 0)
		return ret;

	fd2 = FUNC4(file2, O_RDONLY);
	if (fd2 < 0)
		goto close1;

	ret = FUNC2(fd1, &st1);
	if (ret)
		goto close2;
	ret = FUNC2(fd2, &st2);
	if (ret)
		goto close2;

	if (st1.st_size != st2.st_size)
		goto close2;

	map1 = FUNC3(NULL, st1.st_size, PROT_READ, MAP_PRIVATE, fd1, 0);
	if (map1 == MAP_FAILED)
		goto close2;

	map2 = FUNC3(NULL, st2.st_size, PROT_READ, MAP_PRIVATE, fd2, 0);
	if (map2 == MAP_FAILED)
		goto close2;

	if (FUNC0(map1, map2, st1.st_size))
		goto close2;

	ret = true;
close2:
	FUNC1(fd2);
close1:
	FUNC1(fd1);

	return ret;
}