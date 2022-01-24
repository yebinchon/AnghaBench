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
struct bpf_prog_info {int /*<<< orphan*/  id; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  filename ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  XDP_FLAGS_DRV_MODE ; 
 int /*<<< orphan*/  XDP_FLAGS_SKB_MODE ; 
 int /*<<< orphan*/  XDP_FLAGS_UPDATE_IF_NOEXIST ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bpf_map*) ; 
 struct bpf_map* FUNC2 (int /*<<< orphan*/ *,struct bpf_object*) ; 
 int FUNC3 (int,struct bpf_prog_info*,int*) ; 
 scalar_t__ FUNC4 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 scalar_t__ FUNC5 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int,char**,char const*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 void* ifindex ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  prog_id ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  xdp_flags ; 

int FUNC19(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type	= BPF_PROG_TYPE_XDP,
	};
	unsigned char opt_flags[256] = {};
	const char *optstr = "i:T:SNFh";
	struct bpf_prog_info info = {};
	__u32 info_len = sizeof(info);
	unsigned int kill_after_s = 0;
	int i, prog_fd, map_fd, opt;
	struct bpf_object *obj;
	struct bpf_map *map;
	char filename[256];
	int err;

	for (i = 0; i < FUNC17(optstr); i++)
		if (optstr[i] != 'h' && 'a' <= optstr[i] && optstr[i] <= 'z')
			opt_flags[(unsigned char)optstr[i]] = 1;

	while ((opt = FUNC7(argc, argv, optstr)) != -1) {

		switch (opt) {
		case 'i':
			ifindex = FUNC8(optarg);
			if (!ifindex)
				ifindex = FUNC0(optarg);
			break;
		case 'T':
			kill_after_s = FUNC0(optarg);
			break;
		case 'S':
			xdp_flags |= XDP_FLAGS_SKB_MODE;
			break;
		case 'N':
			xdp_flags |= XDP_FLAGS_DRV_MODE;
			break;
		case 'F':
			xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
			break;
		default:
			FUNC18(argv[0]);
			return 1;
		}
		opt_flags[opt] = 0;
	}

	for (i = 0; i < FUNC17(optstr); i++) {
		if (opt_flags[(unsigned int)optstr[i]]) {
			FUNC6(stderr, "Missing argument -%c\n", optstr[i]);
			FUNC18(argv[0]);
			return 1;
		}
	}

	if (FUNC13(RLIMIT_MEMLOCK, &r)) {
		FUNC10("setrlimit(RLIMIT_MEMLOCK, RLIM_INFINITY)");
		return 1;
	}

	if (!ifindex) {
		FUNC6(stderr, "Invalid ifname\n");
		return 1;
	}

	FUNC15(filename, sizeof(filename), "%s_kern.o", argv[0]);
	prog_load_attr.file = filename;

	if (FUNC4(&prog_load_attr, &obj, &prog_fd))
		return 1;

	map = FUNC2(NULL, obj);
	if (!map) {
		FUNC12("finding a map in obj file failed\n");
		return 1;
	}
	map_fd = FUNC1(map);

	if (!prog_fd) {
		FUNC12("load_bpf_file: %s\n", FUNC16(errno));
		return 1;
	}

	FUNC14(SIGINT, int_exit);
	FUNC14(SIGTERM, int_exit);

	if (FUNC5(ifindex, prog_fd, xdp_flags) < 0) {
		FUNC12("link set xdp fd failed\n");
		return 1;
	}

	err = FUNC3(prog_fd, &info, &info_len);
	if (err) {
		FUNC12("can't get prog info - %s\n", FUNC16(errno));
		return 1;
	}
	prog_id = info.id;

	FUNC11(map_fd, kill_after_s);
	FUNC9(0);

	return 0;
}