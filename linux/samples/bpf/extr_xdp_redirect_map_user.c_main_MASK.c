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
struct bpf_program {int dummy; } ;
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  prog_type; } ;
struct bpf_prog_info {int /*<<< orphan*/  id; } ;
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  filename ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int XDP_FLAGS_DRV_MODE ; 
 int XDP_FLAGS_SKB_MODE ; 
 int XDP_FLAGS_UPDATE_IF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct bpf_prog_info*,int*) ; 
 void* FUNC3 (struct bpf_object*,char*) ; 
 scalar_t__ FUNC4 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int FUNC5 (struct bpf_program*) ; 
 struct bpf_program* FUNC6 (struct bpf_program*,struct bpf_object*) ; 
 scalar_t__ FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  dummy_prog_id ; 
 int /*<<< orphan*/  errno ; 
 int FUNC8 (int,char**,char const*) ; 
 int FUNC9 (char*) ; 
 int ifindex_in ; 
 int ifindex_out ; 
 int ifindex_out_xdp_dummy_attached ; 
 int /*<<< orphan*/  int_exit ; 
 int /*<<< orphan*/  FUNC10 (struct bpf_prog_info*,int /*<<< orphan*/ ,int) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  prog_id ; 
 void* rxcnt_map_fd ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int xdp_flags ; 

int FUNC20(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type	= BPF_PROG_TYPE_XDP,
	};
	struct bpf_program *prog, *dummy_prog;
	struct bpf_prog_info info = {};
	__u32 info_len = sizeof(info);
	int prog_fd, dummy_prog_fd;
	const char *optstr = "FSN";
	struct bpf_object *obj;
	int ret, opt, key = 0;
	char filename[256];
	int tx_port_map_fd;

	while ((opt = FUNC8(argc, argv, optstr)) != -1) {
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
			FUNC19(FUNC0(argv[0]));
			return 1;
		}
	}

	if (optind == argc) {
		FUNC13("usage: %s <IFNAME|IFINDEX>_IN <IFNAME|IFINDEX>_OUT\n", argv[0]);
		return 1;
	}

	if (FUNC14(RLIMIT_MEMLOCK, &r)) {
		FUNC11("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	ifindex_in = FUNC9(argv[optind]);
	if (!ifindex_in)
		ifindex_in = FUNC18(argv[optind], NULL, 0);

	ifindex_out = FUNC9(argv[optind + 1]);
	if (!ifindex_out)
		ifindex_out = FUNC18(argv[optind + 1], NULL, 0);

	FUNC13("input: %d output: %d\n", ifindex_in, ifindex_out);

	FUNC16(filename, sizeof(filename), "%s_kern.o", argv[0]);
	prog_load_attr.file = filename;

	if (FUNC4(&prog_load_attr, &obj, &prog_fd))
		return 1;

	prog = FUNC6(NULL, obj);
	dummy_prog = FUNC6(prog, obj);
	if (!prog || !dummy_prog) {
		FUNC13("finding a prog in obj file failed\n");
		return 1;
	}
	/* bpf_prog_load_xattr gives us the pointer to first prog's fd,
	 * so we're missing only the fd for dummy prog
	 */
	dummy_prog_fd = FUNC5(dummy_prog);
	if (prog_fd < 0 || dummy_prog_fd < 0) {
		FUNC13("bpf_prog_load_xattr: %s\n", FUNC17(errno));
		return 1;
	}

	tx_port_map_fd = FUNC3(obj, "tx_port");
	rxcnt_map_fd = FUNC3(obj, "rxcnt");
	if (tx_port_map_fd < 0 || rxcnt_map_fd < 0) {
		FUNC13("bpf_object__find_map_fd_by_name failed\n");
		return 1;
	}

	if (FUNC7(ifindex_in, prog_fd, xdp_flags) < 0) {
		FUNC13("ERROR: link set xdp fd failed on %d\n", ifindex_in);
		return 1;
	}

	ret = FUNC2(prog_fd, &info, &info_len);
	if (ret) {
		FUNC13("can't get prog info - %s\n", FUNC17(errno));
		return ret;
	}
	prog_id = info.id;

	/* Loading dummy XDP prog on out-device */
	if (FUNC7(ifindex_out, dummy_prog_fd,
			    (xdp_flags | XDP_FLAGS_UPDATE_IF_NOEXIST)) < 0) {
		FUNC13("WARN: link set xdp fd failed on %d\n", ifindex_out);
		ifindex_out_xdp_dummy_attached = false;
	}

	FUNC10(&info, 0, sizeof(info));
	ret = FUNC2(dummy_prog_fd, &info, &info_len);
	if (ret) {
		FUNC13("can't get prog info - %s\n", FUNC17(errno));
		return ret;
	}
	dummy_prog_id = info.id;

	FUNC15(SIGINT, int_exit);
	FUNC15(SIGTERM, int_exit);

	/* populate virtual to physical port map */
	ret = FUNC1(tx_port_map_fd, &key, &ifindex_out, 0);
	if (ret) {
		FUNC11("bpf_update_elem");
		goto out;
	}

	FUNC12(2, ifindex_out);

out:
	return 0;
}