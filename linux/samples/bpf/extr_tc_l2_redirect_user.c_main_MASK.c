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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char*,int) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char **argv)
{
	const char *pinned_file = NULL;
	int ifindex = -1;
	int array_key = 0;
	int array_fd = -1;
	int ret = -1;
	int opt;

	while ((opt = FUNC5(argc, argv, "F:U:i:")) != -1) {
		switch (opt) {
		/* General args */
		case 'U':
			pinned_file = optarg;
			break;
		case 'i':
			ifindex = FUNC0(optarg);
			break;
		default:
			FUNC8();
			goto out;
		}
	}

	if (ifindex < 0 || !pinned_file) {
		FUNC8();
		goto out;
	}

	array_fd = FUNC2(pinned_file);
	if (array_fd < 0) {
		FUNC4(stderr, "bpf_obj_get(%s): %s(%d)\n",
			pinned_file, FUNC7(errno), errno);
		goto out;
	}

	/* bpf_tunnel_key.remote_ipv4 expects host byte orders */
	ret = FUNC1(array_fd, &array_key, &ifindex, 0);
	if (ret) {
		FUNC6("bpf_map_update_elem");
		goto out;
	}

out:
	if (array_fd != -1)
		FUNC3(array_fd);
	return ret;
}