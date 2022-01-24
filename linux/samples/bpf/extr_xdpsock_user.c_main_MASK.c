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
struct xsk_umem_info {int dummy; } ;
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 scalar_t__ BENCH_RXDROP ; 
 scalar_t__ BENCH_TXONLY ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int MAP_ANONYMOUS ; 
 void* MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int NUM_FRAMES ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct xsk_umem_info*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  int_exit ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_socks ; 
 scalar_t__ opt_bench ; 
 int opt_mmap_flags ; 
 int opt_xsk_frame_size ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  poller ; 
 int /*<<< orphan*/  prev_time ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct xsk_umem_info*) ; 
 struct xsk_umem_info* FUNC17 (void*,int) ; 
 int /*<<< orphan*/ * xsks ; 

int FUNC18(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	struct xsk_umem_info *umem;
	pthread_t pt;
	void *bufs;
	int ret;

	FUNC7(argc, argv);

	if (FUNC12(RLIMIT_MEMLOCK, &r)) {
		FUNC2(stderr, "ERROR: setrlimit(RLIMIT_MEMLOCK) \"%s\"\n",
			FUNC14(errno));
		FUNC0(EXIT_FAILURE);
	}

	/* Reserve memory for the umem. Use hugepages if unaligned chunk mode */
	bufs = FUNC6(NULL, NUM_FRAMES * opt_xsk_frame_size,
		    PROT_READ | PROT_WRITE,
		    MAP_PRIVATE | MAP_ANONYMOUS | opt_mmap_flags, -1, 0);
	if (bufs == MAP_FAILED) {
		FUNC8("ERROR: mmap failed\n");
		FUNC0(EXIT_FAILURE);
	}
       /* Create sockets... */
	umem = FUNC17(bufs, NUM_FRAMES * opt_xsk_frame_size);
	xsks[num_socks++] = FUNC16(umem);

	if (opt_bench == BENCH_TXONLY) {
		int i;

		for (i = 0; i < NUM_FRAMES; i++)
			(void)FUNC3(umem, i * opt_xsk_frame_size);
	}

	FUNC13(SIGINT, int_exit);
	FUNC13(SIGTERM, int_exit);
	FUNC13(SIGABRT, int_exit);

	FUNC11(LC_ALL, "");

	ret = FUNC9(&pt, NULL, poller, NULL);
	if (ret)
		FUNC1(ret);

	prev_time = FUNC4();

	if (opt_bench == BENCH_RXDROP)
		FUNC10();
	else if (opt_bench == BENCH_TXONLY)
		FUNC15();
	else
		FUNC5();

	return 0;
}