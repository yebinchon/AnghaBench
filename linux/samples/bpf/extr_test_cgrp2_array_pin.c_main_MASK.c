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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_TYPE_CGROUP_ARRAY ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC6 (int,char**,char*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(int argc, char **argv)
{
	const char *pinned_file = NULL, *cg2 = NULL;
	int create_array = 1;
	int array_key = 0;
	int array_fd = -1;
	int cg2_fd = -1;
	int ret = -1;
	int opt;

	while ((opt = FUNC6(argc, argv, "F:U:v:")) != -1) {
		switch (opt) {
		/* General args */
		case 'F':
			pinned_file = optarg;
			break;
		case 'U':
			pinned_file = optarg;
			create_array = 0;
			break;
		case 'v':
			cg2 = optarg;
			break;
		default:
			FUNC10();
			goto out;
		}
	}

	if (!cg2 || !pinned_file) {
		FUNC10();
		goto out;
	}

	cg2_fd = FUNC7(cg2, O_RDONLY);
	if (cg2_fd < 0) {
		FUNC5(stderr, "open(%s,...): %s(%d)\n",
			cg2, FUNC9(errno), errno);
		goto out;
	}

	if (create_array) {
		array_fd = FUNC0(BPF_MAP_TYPE_CGROUP_ARRAY,
					  sizeof(uint32_t), sizeof(uint32_t),
					  1, 0);
		if (array_fd < 0) {
			FUNC5(stderr,
				"bpf_create_map(BPF_MAP_TYPE_CGROUP_ARRAY,...): %s(%d)\n",
				FUNC9(errno), errno);
			goto out;
		}
	} else {
		array_fd = FUNC2(pinned_file);
		if (array_fd < 0) {
			FUNC5(stderr, "bpf_obj_get(%s): %s(%d)\n",
				pinned_file, FUNC9(errno), errno);
			goto out;
		}
	}

	ret = FUNC1(array_fd, &array_key, &cg2_fd, 0);
	if (ret) {
		FUNC8("bpf_map_update_elem");
		goto out;
	}

	if (create_array) {
		ret = FUNC3(array_fd, pinned_file);
		if (ret) {
			FUNC5(stderr, "bpf_obj_pin(..., %s): %s(%d)\n",
				pinned_file, FUNC9(errno), errno);
			goto out;
		}
	}

out:
	if (array_fd != -1)
		FUNC4(array_fd);
	if (cg2_fd != -1)
		FUNC4(cg2_fd);
	return ret;
}