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
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  prog_type; } ;
struct bpf_prog_info {int id; } ;
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  filename ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  XDP_FLAGS_SKB_MODE ; 
 int /*<<< orphan*/  XDP_FLAGS_UPDATE_IF_NOEXIST ; 
 scalar_t__ arp_table_map_fd ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,struct bpf_prog_info*,int*) ; 
 scalar_t__ FUNC2 (struct bpf_object*,char*) ; 
 scalar_t__ FUNC3 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ exact_match_map_fd ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**,char const*) ; 
 int FUNC9 (char*) ; 
 int* ifindex_list ; 
 int /*<<< orphan*/  int_exit ; 
 scalar_t__ lpm_map_fd ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_prog_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 () ; 
 int optind ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int* prog_id_list ; 
 scalar_t__ rxcnt_map_fd ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int total_ifindex ; 
 scalar_t__ tx_port_map_fd ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(int ac, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type	= BPF_PROG_TYPE_XDP,
	};
	struct bpf_prog_info info = {};
	__u32 info_len = sizeof(info);
	const char *optstr = "SF";
	struct bpf_object *obj;
	char filename[256];
	char **ifname_list;
	int prog_fd, opt;
	int err, i = 1;

	FUNC16(filename, sizeof(filename), "%s_kern.o", argv[0]);
	prog_load_attr.file = filename;

	total_ifindex = ac - 1;
	ifname_list = (argv + 1);

	while ((opt = FUNC8(ac, argv, optstr)) != -1) {
		switch (opt) {
		case 'S':
			flags |= XDP_FLAGS_SKB_MODE;
			total_ifindex--;
			ifname_list++;
			break;
		case 'F':
			flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
			total_ifindex--;
			ifname_list++;
			break;
		default:
			FUNC18(FUNC0(argv[0]));
			return 1;
		}
	}

	if (optind == ac) {
		FUNC18(FUNC0(argv[0]));
		return 1;
	}

	if (FUNC14(RLIMIT_MEMLOCK, &r)) {
		FUNC12("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	if (FUNC3(&prog_load_attr, &obj, &prog_fd))
		return 1;

	FUNC13("\n**************loading bpf file*********************\n\n\n");
	if (!prog_fd) {
		FUNC13("bpf_prog_load_xattr: %s\n", FUNC17(errno));
		return 1;
	}

	lpm_map_fd = FUNC2(obj, "lpm_map");
	rxcnt_map_fd = FUNC2(obj, "rxcnt");
	arp_table_map_fd = FUNC2(obj, "arp_table");
	exact_match_map_fd = FUNC2(obj,
							     "exact_match");
	tx_port_map_fd = FUNC2(obj, "tx_port");
	if (lpm_map_fd < 0 || rxcnt_map_fd < 0 || arp_table_map_fd < 0 ||
	    exact_match_map_fd < 0 || tx_port_map_fd < 0) {
		FUNC13("bpf_object__find_map_fd_by_name failed\n");
		return 1;
	}

	ifindex_list = (int *)FUNC5(total_ifindex, sizeof(int *));
	for (i = 0; i < total_ifindex; i++) {
		ifindex_list[i] = FUNC9(ifname_list[i]);
		if (!ifindex_list[i]) {
			FUNC13("Couldn't translate interface name: %s",
			       FUNC17(errno));
			return 1;
		}
	}
	prog_id_list = (__u32 *)FUNC5(total_ifindex, sizeof(__u32 *));
	for (i = 0; i < total_ifindex; i++) {
		if (FUNC4(ifindex_list[i], prog_fd, flags) < 0) {
			FUNC13("link set xdp fd failed\n");
			int recovery_index = i;

			for (i = 0; i < recovery_index; i++)
				FUNC4(ifindex_list[i], -1, flags);

			return 1;
		}
		err = FUNC1(prog_fd, &info, &info_len);
		if (err) {
			FUNC13("can't get prog info - %s\n", FUNC17(errno));
			return err;
		}
		prog_id_list[i] = info.id;
		FUNC10(&info, 0, sizeof(info));
		FUNC13("Attached to %d\n", ifindex_list[i]);
	}
	FUNC15(SIGINT, int_exit);
	FUNC15(SIGTERM, int_exit);

	FUNC13("*******************ROUTE TABLE*************************\n\n\n");
	FUNC7(AF_INET);
	FUNC13("*******************ARP TABLE***************************\n\n\n");
	FUNC6(AF_INET);
	if (FUNC11() < 0) {
		FUNC13("Error in receiving route update");
		return 1;
	}

	return 0;
}