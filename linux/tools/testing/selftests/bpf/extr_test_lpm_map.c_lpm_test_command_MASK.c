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
struct lpm_mt_test_info {int iter; int cmd; int /*<<< orphan*/  map_fd; TYPE_1__* key; } ;
struct bpf_lpm_trie_key {int /*<<< orphan*/  data; int /*<<< orphan*/  prefixlen; } ;
typedef  int __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  prefixlen; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 int MAX_TEST_KEYS ; 
 struct bpf_lpm_trie_key* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct bpf_lpm_trie_key*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct bpf_lpm_trie_key*,struct bpf_lpm_trie_key*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct bpf_lpm_trie_key*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct bpf_lpm_trie_key*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void *FUNC8(void *arg)
{
	int i, j, ret, iter, key_size;
	struct lpm_mt_test_info *info = arg;
	struct bpf_lpm_trie_key *key_p;

	key_size = sizeof(struct bpf_lpm_trie_key) + sizeof(__u32);
	key_p = FUNC0(key_size);
	for (iter = 0; iter < info->iter; iter++)
		for (i = 0; i < MAX_TEST_KEYS; i++) {
			/* first half of iterations in forward order,
			 * and second half in backward order.
			 */
			j = (iter < (info->iter / 2)) ? i : MAX_TEST_KEYS - i - 1;
			key_p->prefixlen = info->key[j].prefixlen;
			FUNC6(key_p->data, &info->key[j].data, sizeof(__u32));
			if (info->cmd == 0) {
				__u32 value = j;
				/* update must succeed */
				FUNC1(FUNC5(info->map_fd, key_p, &value, 0) == 0);
			} else if (info->cmd == 1) {
				ret = FUNC2(info->map_fd, key_p);
				FUNC1(ret == 0 || errno == ENOENT);
			} else if (info->cmd == 2) {
				__u32 value;
				ret = FUNC4(info->map_fd, key_p, &value);
				FUNC1(ret == 0 || errno == ENOENT);
			} else {
				struct bpf_lpm_trie_key *next_key_p = FUNC0(key_size);
				ret = FUNC3(info->map_fd, key_p, next_key_p);
				FUNC1(ret == 0 || errno == ENOENT || errno == ENOMEM);
			}
		}

	// Pass successful exit info back to the main thread
	FUNC7((void *)info);
}