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
struct perf_buffer_opts {int /*<<< orphan*/  sample_cb; } ;
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  prog_type; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  XDP_FLAGS_UPDATE_IF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct bpf_map*) ; 
 struct bpf_map* FUNC2 (int /*<<< orphan*/ *,struct bpf_object*) ; 
 scalar_t__ FUNC3 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int FUNC4 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int,char**,char const*) ; 
 scalar_t__ if_idx ; 
 char* if_name ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  pb ; 
 int /*<<< orphan*/  FUNC10 (int,int,struct perf_buffer_opts*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  print_bpf_output ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  sig_handler ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdp_flags ; 

int FUNC20(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type	= BPF_PROG_TYPE_XDP,
	};
	struct perf_buffer_opts pb_opts = {};
	const char *optstr = "F";
	int prog_fd, map_fd, opt;
	struct bpf_object *obj;
	struct bpf_map *map;
	char filename[256];
	int ret, err;

	while ((opt = FUNC6(argc, argv, optstr)) != -1) {
		switch (opt) {
		case 'F':
			xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
			break;
		default:
			FUNC19(FUNC0(argv[0]));
			return 1;
		}
	}

	if (optind == argc) {
		FUNC19(FUNC0(argv[0]));
		return 1;
	}

	if (FUNC14(RLIMIT_MEMLOCK, &r)) {
		FUNC12("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	FUNC16(filename, sizeof(filename), "%s_kern.o", argv[0]);
	prog_load_attr.file = filename;

	if (FUNC3(&prog_load_attr, &obj, &prog_fd))
		return 1;

	if (!prog_fd) {
		FUNC13("load_bpf_file: %s\n", FUNC17(errno));
		return 1;
	}

	map = FUNC2(NULL, obj);
	if (!map) {
		FUNC13("finding a map in obj file failed\n");
		return 1;
	}
	map_fd = FUNC1(map);

	if_idx = FUNC7(argv[optind]);
	if (!if_idx)
		if_idx = FUNC18(argv[optind], NULL, 0);

	if (!if_idx) {
		FUNC5(stderr, "Invalid ifname\n");
		return 1;
	}
	if_name = argv[optind];
	err = FUNC4(if_idx, prog_fd, if_name);
	if (err)
		return err;

	if (FUNC15(SIGINT, sig_handler) ||
	    FUNC15(SIGHUP, sig_handler) ||
	    FUNC15(SIGTERM, sig_handler)) {
		FUNC12("signal");
		return 1;
	}

	pb_opts.sample_cb = print_bpf_output;
	pb = FUNC10(map_fd, 8, &pb_opts);
	err = FUNC9(pb);
	if (err) {
		FUNC12("perf_buffer setup failed");
		return 1;
	}

	while ((ret = FUNC11(pb, 1000)) >= 0) {
	}

	FUNC8(0, SIGINT);
	return ret;
}