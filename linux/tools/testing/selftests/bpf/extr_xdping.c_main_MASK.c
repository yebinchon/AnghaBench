#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct pinginfo {int count; int /*<<< orphan*/  seq; int /*<<< orphan*/  member_0; } ;
struct bpf_program {int dummy; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  rin ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int XDPING_DEFAULT_COUNT ; 
 int XDPING_MAX_COUNT ; 
 int XDP_FLAGS_DRV_MODE ; 
 int XDP_FLAGS_SKB_MODE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct bpf_map*) ; 
 struct bpf_map* FUNC3 (int /*<<< orphan*/ *,struct bpf_object*) ; 
 scalar_t__ FUNC4 (int,int*,struct pinginfo*,int /*<<< orphan*/ ) ; 
 struct bpf_program* FUNC5 (struct bpf_object*,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,struct bpf_object**,int*) ; 
 int FUNC7 (struct bpf_program*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct addrinfo*) ; 
 int FUNC13 (int,int,int) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int FUNC15 (int,char**,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  ifindex ; 
 int /*<<< orphan*/  FUNC18 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC26 (int /*<<< orphan*/ ) ; 
 int FUNC27 (char*) ; 
 int xdp_flags ; 

int FUNC28(int argc, char **argv)
{
	__u32 mode_flags = XDP_FLAGS_DRV_MODE | XDP_FLAGS_SKB_MODE;
	struct addrinfo *a, hints = { .ai_family = AF_INET };
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	__u16 count = XDPING_DEFAULT_COUNT;
	struct pinginfo pinginfo = { 0 };
	const char *optstr = "c:I:NsS";
	struct bpf_program *main_prog;
	int prog_fd = -1, map_fd = -1;
	struct sockaddr_in rin;
	struct bpf_object *obj;
	struct bpf_map *map;
	char *ifname = NULL;
	char filename[256];
	int opt, ret = 1;
	__u32 raddr = 0;
	int server = 0;
	char cmd[256];

	while ((opt = FUNC15(argc, argv, optstr)) != -1) {
		switch (opt) {
		case 'c':
			count = FUNC0(optarg);
			if (count < 1 || count > XDPING_MAX_COUNT) {
				FUNC11(stderr,
					"min count is 1, max count is %d\n",
					XDPING_MAX_COUNT);
				return 1;
			}
			break;
		case 'I':
			ifname = optarg;
			ifindex = FUNC17(ifname);
			if (!ifindex) {
				FUNC11(stderr, "Could not get interface %s\n",
					ifname);
				return 1;
			}
			break;
		case 'N':
			xdp_flags |= XDP_FLAGS_DRV_MODE;
			break;
		case 's':
			/* use server program */
			server = 1;
			break;
		case 'S':
			xdp_flags |= XDP_FLAGS_SKB_MODE;
			break;
		default:
			FUNC22(FUNC1(argv[0]));
			return 1;
		}
	}

	if (!ifname) {
		FUNC22(FUNC1(argv[0]));
		return 1;
	}
	if (!server && optind == argc) {
		FUNC22(FUNC1(argv[0]));
		return 1;
	}

	if ((xdp_flags & mode_flags) == mode_flags) {
		FUNC11(stderr, "-N or -S can be specified, not both.\n");
		FUNC22(FUNC1(argv[0]));
		return 1;
	}

	if (!server) {
		/* Only supports IPv4; see hints initiailization above. */
		if (FUNC14(argv[optind], NULL, &hints, &a) || !a) {
			FUNC11(stderr, "Could not resolve %s\n", argv[optind]);
			return 1;
		}
		FUNC18(&rin, a->ai_addr, sizeof(rin));
		raddr = rin.sin_addr.s_addr;
		FUNC12(a);
	}

	if (FUNC21(RLIMIT_MEMLOCK, &r)) {
		FUNC19("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	FUNC25(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC6(filename, BPF_PROG_TYPE_XDP, &obj, &prog_fd)) {
		FUNC11(stderr, "load of %s failed\n", filename);
		return 1;
	}

	main_prog = FUNC5(obj,
						      server ? "xdpserver" :
							       "xdpclient");
	if (main_prog)
		prog_fd = FUNC7(main_prog);
	if (!main_prog || prog_fd < 0) {
		FUNC11(stderr, "could not find xdping program");
		return 1;
	}

	map = FUNC3(NULL, obj);
	if (map)
		map_fd = FUNC2(map);
	if (!map || map_fd < 0) {
		FUNC11(stderr, "Could not find ping map");
		goto done;
	}

	FUNC23(SIGINT, cleanup);
	FUNC23(SIGTERM, cleanup);

	FUNC20("Setting up XDP for %s, please wait...\n", ifname);

	FUNC20("XDP setup disrupts network connectivity, hit Ctrl+C to quit\n");

	if (FUNC8(ifindex, prog_fd, xdp_flags) < 0) {
		FUNC11(stderr, "Link set xdp fd failed for %s\n", ifname);
		goto done;
	}

	if (server) {
		FUNC10(prog_fd);
		FUNC10(map_fd);
		FUNC20("Running server on %s; press Ctrl+C to exit...\n",
		       ifname);
		do { } while (1);
	}

	/* Start xdping-ing from last regular ping reply, e.g. for a count
	 * of 10 ICMP requests, we start xdping-ing using reply with seq number
	 * 10.  The reason the last "real" ping RTT is much higher is that
	 * the ping program sees the ICMP reply associated with the last
	 * XDP-generated packet, so ping doesn't get a reply until XDP is done.
	 */
	pinginfo.seq = FUNC16(count);
	pinginfo.count = count;

	if (FUNC4(map_fd, &raddr, &pinginfo, BPF_ANY)) {
		FUNC11(stderr, "could not communicate with BPF map: %s\n",
			FUNC26(errno));
		FUNC9(0);
		goto done;
	}

	/* We need to wait for XDP setup to complete. */
	FUNC24(10);

	FUNC25(cmd, sizeof(cmd), "ping -c %d -I %s %s",
		 count, ifname, argv[optind]);

	FUNC20("\nNormal ping RTT data\n");
	FUNC20("[Ignore final RTT; it is distorted by XDP using the reply]\n");

	ret = FUNC27(cmd);

	if (!ret)
		ret = FUNC13(map_fd, count, raddr);

	FUNC9(0);

done:
	if (prog_fd > 0)
		FUNC10(prog_fd);
	if (map_fd > 0)
		FUNC10(map_fd);

	return ret;
}