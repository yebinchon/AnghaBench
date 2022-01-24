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
struct stat {int st_size; } ;

/* Variables and functions */
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void *FUNC5(char *file_name, int *size)
{
	struct stat st;
	void *map;
	int fd;

	fd = FUNC3(file_name, O_RDWR);
	if (fd < 0) {
		FUNC4(file_name);
		return NULL;
	}
	if (FUNC1(fd, &st)) {
		FUNC4("Could not determine file size");
		FUNC0(fd);
		return NULL;
	}
	*size = st.st_size;
	map = FUNC2(NULL, *size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	if (map == MAP_FAILED) {
		FUNC4("Mapping to memory failed");
		FUNC0(fd);
		return NULL;
	}
	FUNC0(fd);
	return map;
}