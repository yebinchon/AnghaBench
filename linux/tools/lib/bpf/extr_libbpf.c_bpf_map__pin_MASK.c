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
struct bpf_map {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int EINVAL ; 
 int STRERR_BUFSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char const*) ; 
 int errno ; 
 char* FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(struct bpf_map *map, const char *path)
{
	char *cp, errmsg[STRERR_BUFSIZE];
	int err;

	err = FUNC1(path);
	if (err)
		return err;

	if (map == NULL) {
		FUNC4("invalid map pointer\n");
		return -EINVAL;
	}

	if (FUNC0(map->fd, path)) {
		cp = FUNC2(errno, errmsg, sizeof(errmsg));
		FUNC4("failed to pin map: %s\n", cp);
		return -errno;
	}

	FUNC3("pinned map '%s'\n", path);

	return 0;
}