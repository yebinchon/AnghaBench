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
typedef  enum bpf_obj_type { ____Placeholder_bpf_obj_type } bpf_obj_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(char *path, enum bpf_obj_type exp_type)
{
	enum bpf_obj_type type;
	int fd;

	fd = FUNC3(path, false);
	if (fd < 0)
		return -1;

	type = FUNC1(fd);
	if (type < 0) {
		FUNC0(fd);
		return type;
	}
	if (type != exp_type) {
		FUNC4("incorrect object type: %s", FUNC2(type));
		FUNC0(fd);
		return -1;
	}

	return fd;
}