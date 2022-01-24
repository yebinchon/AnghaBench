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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct bpf_map*) ; 
 struct bpf_map* FUNC2 (int /*<<< orphan*/ *,struct bpf_object*) ; 
 int FUNC3 (int,struct bpf_prog_info*,int*) ; 
 scalar_t__ FUNC4 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (int,char**,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  ifindex ; 
 int /*<<< orphan*/  int_exit ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  prog_id ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdp_flags ; 

int FUNC16(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type	= BPF_PROG_TYPE_XDP,
	};
	struct bpf_prog_info info = {};
	__u32 info_len = sizeof(info);
	const char *optstr = "FSN";
	int prog_fd, map_fd, opt;
	struct bpf_object *obj;
	struct bpf_map *map;
	char filename[256];
	int err;

	while ((opt = FUNC6(argc, argv, optstr)) != -1) {
		switch (opt) {
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
			FUNC15(FUNC0(argv[0]));
			return 1;
		}
	}

	if (optind == argc) {
		FUNC15(FUNC0(argv[0]));
		return 1;
	}

	if (FUNC11(RLIMIT_MEMLOCK, &r)) {
		FUNC8("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	ifindex = FUNC7(argv[optind]);
	if (!ifindex) {
		FUNC8("if_nametoindex");
		return 1;
	}

	FUNC13(filename, sizeof(filename), "%s_kern.o", argv[0]);
	prog_load_attr.file = filename;

	if (FUNC4(&prog_load_attr, &obj, &prog_fd))
		return 1;

	map = FUNC2(NULL, obj);
	if (!map) {
		FUNC10("finding a map in obj file failed\n");
		return 1;
	}
	map_fd = FUNC1(map);

	if (!prog_fd) {
		FUNC10("load_bpf_file: %s\n", FUNC14(errno));
		return 1;
	}

	FUNC12(SIGINT, int_exit);
	FUNC12(SIGTERM, int_exit);

	if (FUNC5(ifindex, prog_fd, xdp_flags) < 0) {
		FUNC10("link set xdp fd failed\n");
		return 1;
	}

	err = FUNC3(prog_fd, &info, &info_len);
	if (err) {
		FUNC10("can't get prog info - %s\n", FUNC14(errno));
		return err;
	}
	prog_id = info.id;

	FUNC9(map_fd, 2);

	return 0;
}