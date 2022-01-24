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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  byte_cnt ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_TYPE_ARRAY ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int MAP_KEY_BYTES ; 
 int MAP_KEY_PACKETS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 char* bpf_log_buf ; 
 scalar_t__ FUNC2 (int,int*,long long*) ; 
 int FUNC3 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int cg_fd, int type, int verdict)
{
	int prog_fd, map_fd, ret, key;
	long long pkt_cnt, byte_cnt;

	map_fd = FUNC1(BPF_MAP_TYPE_ARRAY,
				sizeof(key), sizeof(byte_cnt),
				256, 0);
	if (map_fd < 0) {
		FUNC4("Failed to create map: '%s'\n", FUNC7(errno));
		return EXIT_FAILURE;
	}

	prog_fd = FUNC5(map_fd, verdict);
	FUNC4("Output from kernel verifier:\n%s\n-------\n", bpf_log_buf);

	if (prog_fd < 0) {
		FUNC4("Failed to load prog: '%s'\n", FUNC7(errno));
		return EXIT_FAILURE;
	}

	ret = FUNC3(prog_fd, cg_fd, type, 0);
	if (ret < 0) {
		FUNC4("Failed to attach prog to cgroup: '%s'\n",
		       FUNC7(errno));
		return EXIT_FAILURE;
	}
	while (1) {
		key = MAP_KEY_PACKETS;
		FUNC0(FUNC2(map_fd, &key, &pkt_cnt) == 0);

		key = MAP_KEY_BYTES;
		FUNC0(FUNC2(map_fd, &key, &byte_cnt) == 0);

		FUNC4("cgroup received %lld packets, %lld bytes\n",
		       pkt_cnt, byte_cnt);
		FUNC6(1);
	}

	return EXIT_SUCCESS;
}