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
 int /*<<< orphan*/  BENCH_L2FWD ; 
 int /*<<< orphan*/  BENCH_RXDROP ; 
 int /*<<< orphan*/  BENCH_TXONLY ; 
 int /*<<< orphan*/  MAP_HUGETLB ; 
 int /*<<< orphan*/  XDP_COPY ; 
 int /*<<< orphan*/  XDP_FLAGS_DRV_MODE ; 
 int /*<<< orphan*/  XDP_FLAGS_SKB_MODE ; 
 int /*<<< orphan*/  XDP_FLAGS_UPDATE_IF_NOEXIST ; 
 int /*<<< orphan*/  XDP_UMEM_UNALIGNED_CHUNK_FLAG ; 
 int /*<<< orphan*/  XDP_USE_NEED_WAKEUP ; 
 int /*<<< orphan*/  XDP_ZEROCOPY ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  long_options ; 
 int /*<<< orphan*/  opt_bench ; 
 char* opt_if ; 
 int /*<<< orphan*/  opt_ifindex ; 
 void* opt_interval ; 
 int /*<<< orphan*/  opt_mmap_flags ; 
 int opt_need_wakeup ; 
 int opt_poll ; 
 void* opt_queue ; 
 int /*<<< orphan*/  opt_umem_flags ; 
 int opt_unaligned_chunks ; 
 int /*<<< orphan*/  opt_xdp_bind_flags ; 
 int /*<<< orphan*/  opt_xdp_flags ; 
 int opt_xsk_frame_size ; 
 char* optarg ; 
 scalar_t__ opterr ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int argc, char **argv)
{
	int option_index, c;

	opterr = 0;

	for (;;) {
		c = FUNC3(argc, argv, "Frtli:q:psSNn:czf:mu",
				long_options, &option_index);
		if (c == -1)
			break;

		switch (c) {
		case 'r':
			opt_bench = BENCH_RXDROP;
			break;
		case 't':
			opt_bench = BENCH_TXONLY;
			break;
		case 'l':
			opt_bench = BENCH_L2FWD;
			break;
		case 'i':
			opt_if = optarg;
			break;
		case 'q':
			opt_queue = FUNC0(optarg);
			break;
		case 'p':
			opt_poll = 1;
			break;
		case 'S':
			opt_xdp_flags |= XDP_FLAGS_SKB_MODE;
			opt_xdp_bind_flags |= XDP_COPY;
			break;
		case 'N':
			opt_xdp_flags |= XDP_FLAGS_DRV_MODE;
			break;
		case 'n':
			opt_interval = FUNC0(optarg);
			break;
		case 'z':
			opt_xdp_bind_flags |= XDP_ZEROCOPY;
			break;
		case 'c':
			opt_xdp_bind_flags |= XDP_COPY;
			break;
		case 'u':
			opt_umem_flags |= XDP_UMEM_UNALIGNED_CHUNK_FLAG;
			opt_unaligned_chunks = 1;
			opt_mmap_flags = MAP_HUGETLB;
			break;
		case 'F':
			opt_xdp_flags &= ~XDP_FLAGS_UPDATE_IF_NOEXIST;
			break;
		case 'f':
			opt_xsk_frame_size = FUNC0(optarg);
		case 'm':
			opt_need_wakeup = false;
			opt_xdp_bind_flags &= ~XDP_USE_NEED_WAKEUP;
			break;

		default:
			FUNC5(FUNC1(argv[0]));
		}
	}

	opt_ifindex = FUNC4(opt_if);
	if (!opt_ifindex) {
		FUNC2(stderr, "ERROR: interface \"%s\" does not exist\n",
			opt_if);
		FUNC5(FUNC1(argv[0]));
	}

	if ((opt_xsk_frame_size & (opt_xsk_frame_size - 1)) &&
	    !opt_unaligned_chunks) {
		FUNC2(stderr, "--frame-size=%d is not a power of two\n",
			opt_xsk_frame_size);
		FUNC5(FUNC1(argv[0]));
	}
}