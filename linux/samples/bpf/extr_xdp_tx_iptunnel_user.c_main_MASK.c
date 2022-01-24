#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int* v6; } ;
struct vip {unsigned short family; int /*<<< orphan*/  dport; void* protocol; TYPE_1__ daddr; } ;
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {unsigned int* v6; } ;
struct TYPE_5__ {unsigned int* v6; } ;
struct iptnl_info {unsigned short family; scalar_t__ dmac; TYPE_3__ daddr; TYPE_2__ saddr; } ;
struct ether_addr {int dummy; } ;
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  prog_type; } ;
struct bpf_prog_info {int /*<<< orphan*/  id; } ;
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  filename ;
typedef  int __u32 ;

/* Variables and functions */
 unsigned short AF_UNSPEC ; 
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 void* IPPROTO_TCP ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  XDP_FLAGS_DRV_MODE ; 
 int /*<<< orphan*/  XDP_FLAGS_SKB_MODE ; 
 int /*<<< orphan*/  XDP_FLAGS_UPDATE_IF_NOEXIST ; 
 void* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,struct vip*,struct iptnl_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct bpf_prog_info*,int*) ; 
 void* FUNC3 (struct bpf_object*,char*) ; 
 scalar_t__ FUNC4 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 scalar_t__ FUNC5 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (char*,struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int,char**,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (char*) ; 
 void* ifindex ; 
 int /*<<< orphan*/  int_exit ; 
 char* optarg ; 
 void* FUNC11 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  prog_id ; 
 scalar_t__ rxcnt_map_fd ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  xdp_flags ; 

int FUNC22(int argc, char **argv)
{
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type	= BPF_PROG_TYPE_XDP,
	};
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	int min_port = 0, max_port = 0, vip2tnl_map_fd;
	const char *optstr = "i:a:p:s:d:m:T:P:FSNh";
	unsigned char opt_flags[256] = {};
	struct bpf_prog_info info = {};
	__u32 info_len = sizeof(info);
	unsigned int kill_after_s = 0;
	struct iptnl_info tnl = {};
	struct bpf_object *obj;
	struct vip vip = {};
	char filename[256];
	int opt, prog_fd;
	int i, err;

	tnl.family = AF_UNSPEC;
	vip.protocol = IPPROTO_TCP;

	for (i = 0; i < FUNC20(optstr); i++)
		if (optstr[i] != 'h' && 'a' <= optstr[i] && optstr[i] <= 'z')
			opt_flags[(unsigned char)optstr[i]] = 1;

	while ((opt = FUNC8(argc, argv, optstr)) != -1) {
		unsigned short family;
		unsigned int *v6;

		switch (opt) {
		case 'i':
			ifindex = FUNC10(optarg);
			if (!ifindex)
				ifindex = FUNC0(optarg);
			break;
		case 'a':
			vip.family = FUNC11(optarg, vip.daddr.v6);
			if (vip.family == AF_UNSPEC)
				return 1;
			break;
		case 'p':
			if (FUNC12(optarg, &min_port, &max_port))
				return 1;
			break;
		case 'P':
			vip.protocol = FUNC0(optarg);
			break;
		case 's':
		case 'd':
			if (opt == 's')
				v6 = tnl.saddr.v6;
			else
				v6 = tnl.daddr.v6;

			family = FUNC11(optarg, v6);
			if (family == AF_UNSPEC)
				return 1;
			if (tnl.family == AF_UNSPEC) {
				tnl.family = family;
			} else if (tnl.family != family) {
				FUNC7(stderr,
					"The IP version of the src and dst addresses used in the IP encapsulation does not match\n");
				return 1;
			}
			break;
		case 'm':
			if (!FUNC6(optarg,
					  (struct ether_addr *)tnl.dmac)) {
				FUNC7(stderr, "Invalid mac address:%s\n",
					optarg);
				return 1;
			}
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
			FUNC21(argv[0]);
			return 1;
		}
		opt_flags[opt] = 0;
	}

	for (i = 0; i < FUNC20(optstr); i++) {
		if (opt_flags[(unsigned int)optstr[i]]) {
			FUNC7(stderr, "Missing argument -%c\n", optstr[i]);
			FUNC21(argv[0]);
			return 1;
		}
	}

	if (FUNC16(RLIMIT_MEMLOCK, &r)) {
		FUNC13("setrlimit(RLIMIT_MEMLOCK, RLIM_INFINITY)");
		return 1;
	}

	if (!ifindex) {
		FUNC7(stderr, "Invalid ifname\n");
		return 1;
	}

	FUNC18(filename, sizeof(filename), "%s_kern.o", argv[0]);
	prog_load_attr.file = filename;

	if (FUNC4(&prog_load_attr, &obj, &prog_fd))
		return 1;

	if (!prog_fd) {
		FUNC15("load_bpf_file: %s\n", FUNC19(errno));
		return 1;
	}

	rxcnt_map_fd = FUNC3(obj, "rxcnt");
	vip2tnl_map_fd = FUNC3(obj, "vip2tnl");
	if (vip2tnl_map_fd < 0 || rxcnt_map_fd < 0) {
		FUNC15("bpf_object__find_map_fd_by_name failed\n");
		return 1;
	}

	FUNC17(SIGINT, int_exit);
	FUNC17(SIGTERM, int_exit);

	while (min_port <= max_port) {
		vip.dport = FUNC9(min_port++);
		if (FUNC1(vip2tnl_map_fd, &vip, &tnl,
					BPF_NOEXIST)) {
			FUNC13("bpf_map_update_elem(&vip2tnl)");
			return 1;
		}
	}

	if (FUNC5(ifindex, prog_fd, xdp_flags) < 0) {
		FUNC15("link set xdp fd failed\n");
		return 1;
	}

	err = FUNC2(prog_fd, &info, &info_len);
	if (err) {
		FUNC15("can't get prog info - %s\n", FUNC19(errno));
		return err;
	}
	prog_id = info.id;

	FUNC14(kill_after_s);

	FUNC5(ifindex, -1, xdp_flags);

	return 0;
}