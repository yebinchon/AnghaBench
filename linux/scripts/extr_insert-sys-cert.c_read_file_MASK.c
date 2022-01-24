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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static char *FUNC6(char *file_name, int *size)
{
	struct stat st;
	char *buf;
	int fd;

	fd = FUNC3(file_name, O_RDONLY);
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
	buf = FUNC2(*size);
	if (!buf) {
		FUNC4("Allocating memory failed");
		FUNC0(fd);
		return NULL;
	}
	if (FUNC5(fd, buf, *size) != *size) {
		FUNC4("File read failed");
		FUNC0(fd);
		return NULL;
	}
	FUNC0(fd);
	return buf;
}