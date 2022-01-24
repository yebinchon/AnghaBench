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
struct rlimit {int member_0; int /*<<< orphan*/  member_1; } ;
struct bpf_program {int dummy; } ;
struct bpf_prog_load_attr {char* file; int /*<<< orphan*/  prog_type; } ;
struct bpf_prog_info {int /*<<< orphan*/  id; } ;
struct bpf_object {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  filename ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_UNSPEC ; 
 int EXIT_FAIL ; 
 int EXIT_FAIL_OPTION ; 
 int EXIT_FAIL_XDP ; 
 int EXIT_OK ; 
 int /*<<< orphan*/  IF_NAMESIZE ; 
 int MAX_CPUS ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  XDP_FLAGS_SKB_MODE ; 
 int /*<<< orphan*/  XDP_FLAGS_UPDATE_IF_NOEXIST ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (int,struct bpf_prog_info*,int*) ; 
 struct bpf_program* FUNC2 (struct bpf_object*,char*) ; 
 scalar_t__ FUNC3 (struct bpf_prog_load_attr*,struct bpf_object**,int*) ; 
 int FUNC4 (struct bpf_program*) ; 
 scalar_t__ FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (char*) ; 
 int ifindex ; 
 char* ifname ; 
 int /*<<< orphan*/  ifname_buf ; 
 scalar_t__ FUNC10 (struct bpf_object*) ; 
 int /*<<< orphan*/  int_exit ; 
 int /*<<< orphan*/  long_options ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  prog_id ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC21 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char**,struct bpf_object*) ; 
 int /*<<< orphan*/  xdp_flags ; 

int FUNC23(int argc, char **argv)
{
	struct rlimit r = {10 * 1024 * 1024, RLIM_INFINITY};
	char *prog_name = "xdp_cpu_map5_lb_hash_ip_pairs";
	struct bpf_prog_load_attr prog_load_attr = {
		.prog_type	= BPF_PROG_TYPE_UNSPEC,
	};
	struct bpf_prog_info info = {};
	__u32 info_len = sizeof(info);
	bool use_separators = true;
	bool stress_mode = false;
	struct bpf_program *prog;
	struct bpf_object *obj;
	char filename[256];
	int added_cpus = 0;
	int longindex = 0;
	int interval = 2;
	int add_cpu = -1;
	int opt, err;
	int prog_fd;
	__u32 qsize;

	/* Notice: choosing he queue size is very important with the
	 * ixgbe driver, because it's driver page recycling trick is
	 * dependend on pages being returned quickly.  The number of
	 * out-standing packets in the system must be less-than 2x
	 * RX-ring size.
	 */
	qsize = 128+64;

	FUNC16(filename, sizeof(filename), "%s_kern.o", argv[0]);
	prog_load_attr.file = filename;

	if (FUNC14(RLIMIT_MEMLOCK, &r)) {
		FUNC12("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	if (FUNC3(&prog_load_attr, &obj, &prog_fd))
		return EXIT_FAIL;

	if (prog_fd < 0) {
		FUNC7(stderr, "ERR: bpf_prog_load_xattr: %s\n",
			FUNC18(errno));
		return EXIT_FAIL;
	}
	if (FUNC10(obj) < 0) {
		FUNC7(stderr, "bpf_object__find_map_fd_by_name failed\n");
		return EXIT_FAIL;
	}
	FUNC11();

	/* Parse commands line args */
	while ((opt = FUNC8(argc, argv, "hSd:s:p:q:c:xzF",
				  long_options, &longindex)) != -1) {
		switch (opt) {
		case 'd':
			if (FUNC19(optarg) >= IF_NAMESIZE) {
				FUNC7(stderr, "ERR: --dev name too long\n");
				goto error;
			}
			ifname = (char *)&ifname_buf;
			FUNC20(ifname, optarg, IF_NAMESIZE);
			ifindex = FUNC9(ifname);
			if (ifindex == 0) {
				FUNC7(stderr,
					"ERR: --dev name unknown err(%d):%s\n",
					errno, FUNC18(errno));
				goto error;
			}
			break;
		case 's':
			interval = FUNC0(optarg);
			break;
		case 'S':
			xdp_flags |= XDP_FLAGS_SKB_MODE;
			break;
		case 'x':
			stress_mode = true;
			break;
		case 'z':
			use_separators = false;
			break;
		case 'p':
			/* Selecting eBPF prog to load */
			prog_name = optarg;
			break;
		case 'c':
			/* Add multiple CPUs */
			add_cpu = FUNC21(optarg, NULL, 0);
			if (add_cpu >= MAX_CPUS) {
				FUNC7(stderr,
				"--cpu nr too large for cpumap err(%d):%s\n",
					errno, FUNC18(errno));
				goto error;
			}
			FUNC6(add_cpu, qsize, added_cpus, true);
			added_cpus++;
			break;
		case 'q':
			qsize = FUNC0(optarg);
			break;
		case 'F':
			xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
			break;
		case 'h':
		error:
		default:
			FUNC22(argv, obj);
			return EXIT_FAIL_OPTION;
		}
	}
	/* Required option */
	if (ifindex == -1) {
		FUNC7(stderr, "ERR: required option --dev missing\n");
		FUNC22(argv, obj);
		return EXIT_FAIL_OPTION;
	}
	/* Required option */
	if (add_cpu == -1) {
		FUNC7(stderr, "ERR: required option --cpu missing\n");
		FUNC7(stderr, " Specify multiple --cpu option to add more\n");
		FUNC22(argv, obj);
		return EXIT_FAIL_OPTION;
	}

	/* Remove XDP program when program is interrupted or killed */
	FUNC15(SIGINT, int_exit);
	FUNC15(SIGTERM, int_exit);

	prog = FUNC2(obj, prog_name);
	if (!prog) {
		FUNC7(stderr, "bpf_object__find_program_by_title failed\n");
		return EXIT_FAIL;
	}

	prog_fd = FUNC4(prog);
	if (prog_fd < 0) {
		FUNC7(stderr, "bpf_program__fd failed\n");
		return EXIT_FAIL;
	}

	if (FUNC5(ifindex, prog_fd, xdp_flags) < 0) {
		FUNC7(stderr, "link set xdp fd failed\n");
		return EXIT_FAIL_XDP;
	}

	err = FUNC1(prog_fd, &info, &info_len);
	if (err) {
		FUNC13("can't get prog info - %s\n", FUNC18(errno));
		return err;
	}
	prog_id = info.id;

	FUNC17(interval, use_separators, prog_name, stress_mode);
	return EXIT_OK;
}