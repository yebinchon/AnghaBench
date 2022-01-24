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
struct lpm_mt_test_info {int cmd; } ;
struct bpf_lpm_trie_key {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_NO_PREALLOC ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_LPM_TRIE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  lpm_test_command ; 
 int /*<<< orphan*/  FUNC3 (struct lpm_mt_test_info*,struct lpm_mt_test_info*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct lpm_mt_test_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (struct lpm_mt_test_info*,int) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct lpm_mt_test_info info[4];
	size_t key_size, value_size;
	pthread_t thread_id[4];
	int i, map_fd;
	void *ret;

	/* create a trie */
	value_size = sizeof(__u32);
	key_size = sizeof(struct bpf_lpm_trie_key) + value_size;
	map_fd = FUNC1(BPF_MAP_TYPE_LPM_TRIE, key_size, value_size,
				100, BPF_F_NO_PREALLOC);

	/* create 4 threads to test update, delete, lookup and get_next_key */
	FUNC6(&info[0], map_fd);
	for (i = 0; i < 4; i++) {
		if (i != 0)
			FUNC3(&info[i], &info[0], sizeof(info[i]));
		info[i].cmd = i;
		FUNC0(FUNC4(&thread_id[i], NULL, &lpm_test_command, &info[i]) == 0);
	}

	for (i = 0; i < 4; i++)
		FUNC0(FUNC5(thread_id[i], &ret) == 0 && ret == (void *)&info[i]);

	FUNC2(map_fd);
}