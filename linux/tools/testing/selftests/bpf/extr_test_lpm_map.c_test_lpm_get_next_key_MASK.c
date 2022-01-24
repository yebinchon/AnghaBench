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
typedef  int /*<<< orphan*/  value ;
struct bpf_lpm_trie_key {int prefixlen; int* data; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  BPF_F_NO_PREALLOC ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_LPM_TRIE ; 
 scalar_t__ ENOENT ; 
 struct bpf_lpm_trie_key* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct bpf_lpm_trie_key*,struct bpf_lpm_trie_key*) ; 
 scalar_t__ FUNC4 (int,struct bpf_lpm_trie_key*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_lpm_trie_key*,struct bpf_lpm_trie_key*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_lpm_trie_key*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC9(void)
{
	struct bpf_lpm_trie_key *key_p, *next_key_p;
	size_t key_size;
	__u32 value = 0;
	int map_fd;

	key_size = sizeof(*key_p) + sizeof(__u32);
	key_p = FUNC0(key_size);
	next_key_p = FUNC0(key_size);

	map_fd = FUNC2(BPF_MAP_TYPE_LPM_TRIE, key_size, sizeof(value),
				100, BPF_F_NO_PREALLOC);
	FUNC1(map_fd >= 0);

	/* empty tree. get_next_key should return ENOENT */
	FUNC1(FUNC3(map_fd, NULL, key_p) == -1 &&
	       errno == ENOENT);

	/* get and verify the first key, get the second one should fail. */
	key_p->prefixlen = 16;
	FUNC6(AF_INET, "192.168.0.0", key_p->data);
	FUNC1(FUNC4(map_fd, key_p, &value, 0) == 0);

	FUNC8(key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, NULL, key_p) == 0);
	FUNC1(key_p->prefixlen == 16 && key_p->data[0] == 192 &&
	       key_p->data[1] == 168);

	FUNC1(FUNC3(map_fd, key_p, next_key_p) == -1 &&
	       errno == ENOENT);

	/* no exact matching key should get the first one in post order. */
	key_p->prefixlen = 8;
	FUNC1(FUNC3(map_fd, NULL, key_p) == 0);
	FUNC1(key_p->prefixlen == 16 && key_p->data[0] == 192 &&
	       key_p->data[1] == 168);

	/* add one more element (total two) */
	key_p->prefixlen = 24;
	FUNC6(AF_INET, "192.168.128.0", key_p->data);
	FUNC1(FUNC4(map_fd, key_p, &value, 0) == 0);

	FUNC8(key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, NULL, key_p) == 0);
	FUNC1(key_p->prefixlen == 24 && key_p->data[0] == 192 &&
	       key_p->data[1] == 168 && key_p->data[2] == 128);

	FUNC8(next_key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 16 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == -1 &&
	       errno == ENOENT);

	/* Add one more element (total three) */
	key_p->prefixlen = 24;
	FUNC6(AF_INET, "192.168.0.0", key_p->data);
	FUNC1(FUNC4(map_fd, key_p, &value, 0) == 0);

	FUNC8(key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, NULL, key_p) == 0);
	FUNC1(key_p->prefixlen == 24 && key_p->data[0] == 192 &&
	       key_p->data[1] == 168 && key_p->data[2] == 0);

	FUNC8(next_key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 24 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168 && next_key_p->data[2] == 128);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 16 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == -1 &&
	       errno == ENOENT);

	/* Add one more element (total four) */
	key_p->prefixlen = 24;
	FUNC6(AF_INET, "192.168.1.0", key_p->data);
	FUNC1(FUNC4(map_fd, key_p, &value, 0) == 0);

	FUNC8(key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, NULL, key_p) == 0);
	FUNC1(key_p->prefixlen == 24 && key_p->data[0] == 192 &&
	       key_p->data[1] == 168 && key_p->data[2] == 0);

	FUNC8(next_key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 24 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168 && next_key_p->data[2] == 1);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 24 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168 && next_key_p->data[2] == 128);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 16 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == -1 &&
	       errno == ENOENT);

	/* Add one more element (total five) */
	key_p->prefixlen = 28;
	FUNC6(AF_INET, "192.168.1.128", key_p->data);
	FUNC1(FUNC4(map_fd, key_p, &value, 0) == 0);

	FUNC8(key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, NULL, key_p) == 0);
	FUNC1(key_p->prefixlen == 24 && key_p->data[0] == 192 &&
	       key_p->data[1] == 168 && key_p->data[2] == 0);

	FUNC8(next_key_p, 0, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 28 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168 && next_key_p->data[2] == 1 &&
	       next_key_p->data[3] == 128);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 24 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168 && next_key_p->data[2] == 1);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 24 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168 && next_key_p->data[2] == 128);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 16 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168);

	FUNC7(key_p, next_key_p, key_size);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == -1 &&
	       errno == ENOENT);

	/* no exact matching key should return the first one in post order */
	key_p->prefixlen = 22;
	FUNC6(AF_INET, "192.168.1.0", key_p->data);
	FUNC1(FUNC3(map_fd, key_p, next_key_p) == 0);
	FUNC1(next_key_p->prefixlen == 24 && next_key_p->data[0] == 192 &&
	       next_key_p->data[1] == 168 && next_key_p->data[2] == 0);

	FUNC5(map_fd);
}