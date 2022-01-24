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
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 

int FUNC4(struct bpf_map *map, const char *path)
{
	int err;

	err = FUNC0(path);
	if (err)
		return err;

	if (map == NULL) {
		FUNC2("invalid map pointer\n");
		return -EINVAL;
	}

	err = FUNC3(path);
	if (err != 0)
		return -errno;
	FUNC1("unpinned map '%s'\n", path);

	return 0;
}