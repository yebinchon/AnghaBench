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

/* Variables and functions */
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,struct stat*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static char *FUNC7(const char *fn, size_t *size)
{
	unsigned ps = FUNC6(_SC_PAGESIZE);
	struct stat st;
	char *map = NULL;
	int err;
	int fd = FUNC3(fn, O_RDONLY);

	if (fd < 0 && verbose > 0 && fn) {
		FUNC4("Error opening events file '%s': %s\n", fn,
				FUNC5(errno));
	}

	if (fd < 0)
		return NULL;
	err = FUNC1(fd, &st);
	if (err < 0)
		goto out;
	*size = st.st_size;
	map = FUNC2(NULL,
		   (st.st_size + ps - 1) & ~(ps - 1),
		   PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, 0);
	if (map == MAP_FAILED)
		map = NULL;
out:
	FUNC0(fd);
	return map;
}