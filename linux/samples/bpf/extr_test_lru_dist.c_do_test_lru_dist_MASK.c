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
struct pfect_lru {int nr_unique; int total; unsigned int nr_misses; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_NOEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned long long*,unsigned long long*) ; 
 scalar_t__ FUNC2 (unsigned int,unsigned long long*,unsigned long long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int dist_key_counts ; 
 unsigned long long* dist_keys ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (struct pfect_lru*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfect_lru*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pfect_lru*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,...) ; 

__attribute__((used)) static void FUNC8(int task, void *data)
{
	unsigned int nr_misses = 0;
	struct pfect_lru pfect_lru;
	unsigned long long key, value = 1234;
	unsigned int i;

	unsigned int lru_map_fd = ((unsigned int *)data)[0];
	unsigned int lru_size = ((unsigned int *)data)[1];
	unsigned long long key_offset = task * dist_key_counts;

	FUNC5(&pfect_lru, lru_size, dist_key_counts);

	for (i = 0; i < dist_key_counts; i++) {
		key = dist_keys[i] + key_offset;

		FUNC6(&pfect_lru, key);

		if (!FUNC1(lru_map_fd, &key, &value))
			continue;

		if (FUNC2(lru_map_fd, &key, &value, BPF_NOEXIST)) {
			FUNC7("bpf_map_update_elem(lru_map_fd, %llu): errno:%d\n",
			       key, errno);
			FUNC0(0);
		}

		nr_misses++;
	}

	FUNC7("    task:%d BPF LRU: nr_unique:%u(/%u) nr_misses:%u(/%u)\n",
	       task, pfect_lru.nr_unique, dist_key_counts, nr_misses,
	       dist_key_counts);
	FUNC7("    task:%d Perfect LRU: nr_unique:%u(/%u) nr_misses:%u(/%u)\n",
	       task, pfect_lru.nr_unique, pfect_lru.total,
	       pfect_lru.nr_misses, pfect_lru.total);

	FUNC4(&pfect_lru);
	FUNC3(lru_map_fd);
}