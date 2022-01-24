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
typedef  int /*<<< orphan*/  map_types ;
typedef  int /*<<< orphan*/  map_flags ;

/* Variables and functions */
 int BPF_F_NO_COMMON_LRU ; 
 int BPF_MAP_TYPE_LRU_HASH ; 
 int BPF_MAP_TYPE_LRU_PERCPU_HASH ; 
 unsigned int LOCAL_FREE_TARGET ; 
 unsigned int PERCPU_FREE_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int nr_cpus ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

int FUNC13(int argc, char **argv)
{
	int map_types[] = {BPF_MAP_TYPE_LRU_HASH,
			     BPF_MAP_TYPE_LRU_PERCPU_HASH};
	int map_flags[] = {0, BPF_F_NO_COMMON_LRU};
	int t, f;

	FUNC3(stdout, NULL);

	nr_cpus = FUNC1();
	FUNC0(nr_cpus != -1);
	FUNC2("nr_cpus:%d\n\n", nr_cpus);

	for (f = 0; f < sizeof(map_flags) / sizeof(*map_flags); f++) {
		unsigned int tgt_free = (map_flags[f] & BPF_F_NO_COMMON_LRU) ?
			PERCPU_FREE_TARGET : LOCAL_FREE_TARGET;

		for (t = 0; t < sizeof(map_types) / sizeof(*map_types); t++) {
			FUNC4(map_types[t], map_flags[f]);
			FUNC5(map_types[t], map_flags[f], tgt_free);
			FUNC6(map_types[t], map_flags[f], tgt_free);
			FUNC7(map_types[t], map_flags[f], tgt_free);
			FUNC8(map_types[t], map_flags[f], tgt_free);
			FUNC9(map_types[t], map_flags[f]);
			FUNC10(map_types[t], map_flags[f], tgt_free);
			FUNC11(map_types[t], map_flags[f]);
			FUNC12(map_types[t], map_flags[f]);

			FUNC2("\n");
		}
	}

	return 0;
}