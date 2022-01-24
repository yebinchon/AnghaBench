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
typedef  int /*<<< orphan*/  map_flags ;

/* Variables and functions */
 int BPF_F_NO_COMMON_LRU ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_LRU_HASH ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  dist_key_counts ; 
 int /*<<< orphan*/  dist_keys ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int nr_cpus ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	int map_flags[] = {0, BPF_F_NO_COMMON_LRU};
	const char *dist_file;
	int nr_tasks = 1;
	int lru_size;
	int f;

	if (argc < 4) {
		FUNC5("Usage: %s <dist-file> <lru-size> <nr-tasks>\n",
		       argv[0]);
		return -1;
	}

	dist_file = argv[1];
	lru_size = FUNC1(argv[2]);
	nr_tasks = FUNC1(argv[3]);

	FUNC7(stdout, NULL);

	FUNC0(!FUNC8(RLIMIT_MEMLOCK, &r));

	FUNC9(FUNC14(NULL));

	nr_cpus = FUNC2();
	FUNC0(nr_cpus != -1);
	FUNC5("nr_cpus:%d\n\n", nr_cpus);

	nr_tasks = FUNC4(nr_tasks, nr_cpus);

	dist_key_counts = FUNC6(dist_file, &dist_keys);
	if (!dist_key_counts) {
		FUNC5("%s has no key\n", dist_file);
		return -1;
	}

	for (f = 0; f < sizeof(map_flags) / sizeof(*map_flags); f++) {
		FUNC10(BPF_MAP_TYPE_LRU_HASH, map_flags[f]);
		FUNC11(BPF_MAP_TYPE_LRU_HASH, map_flags[f]);
		FUNC13(BPF_MAP_TYPE_LRU_HASH, map_flags[f],
				       nr_tasks);
		FUNC12(BPF_MAP_TYPE_LRU_HASH, map_flags[f],
				       nr_tasks, lru_size);
		FUNC5("\n");
	}

	FUNC3(dist_keys);

	return 0;
}