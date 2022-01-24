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
struct bpf_lpm_trie_key {int prefixlen; int /*<<< orphan*/  data; } ;
typedef  int __u64 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  BPF_F_NO_PREALLOC ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_LPM_TRIE ; 
 scalar_t__ ENOENT ; 
 struct bpf_lpm_trie_key* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct bpf_lpm_trie_key*) ; 
 int FUNC4 (int,struct bpf_lpm_trie_key*,int*) ; 
 scalar_t__ FUNC5 (int,struct bpf_lpm_trie_key*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
	struct bpf_lpm_trie_key *key;
	size_t key_size;
	int map_fd;
	__u64 value;

	key_size = sizeof(*key) + sizeof(__u32);
	key = FUNC0(key_size);

	map_fd = FUNC2(BPF_MAP_TYPE_LPM_TRIE,
				key_size, sizeof(value),
				100, BPF_F_NO_PREALLOC);
	FUNC1(map_fd >= 0);

	/* Add nodes:
	 * 192.168.0.0/16   (1)
	 * 192.168.0.0/24   (2)
	 * 192.168.128.0/24 (3)
	 * 192.168.1.0/24   (4)
	 *
	 *         (1)
	 *        /   \
         *     (IM)    (3)
	 *    /   \
         *   (2)  (4)
	 */
	value = 1;
	key->prefixlen = 16;
	FUNC7(AF_INET, "192.168.0.0", key->data);
	FUNC1(FUNC5(map_fd, key, &value, 0) == 0);

	value = 2;
	key->prefixlen = 24;
	FUNC7(AF_INET, "192.168.0.0", key->data);
	FUNC1(FUNC5(map_fd, key, &value, 0) == 0);

	value = 3;
	key->prefixlen = 24;
	FUNC7(AF_INET, "192.168.128.0", key->data);
	FUNC1(FUNC5(map_fd, key, &value, 0) == 0);

	value = 4;
	key->prefixlen = 24;
	FUNC7(AF_INET, "192.168.1.0", key->data);
	FUNC1(FUNC5(map_fd, key, &value, 0) == 0);

	/* remove non-existent node */
	key->prefixlen = 32;
	FUNC7(AF_INET, "10.0.0.1", key->data);
	FUNC1(FUNC4(map_fd, key, &value) == -1 &&
		errno == ENOENT);

	key->prefixlen = 30; // unused prefix so far
	FUNC7(AF_INET, "192.255.0.0", key->data);
	FUNC1(FUNC3(map_fd, key) == -1 &&
		errno == ENOENT);

	key->prefixlen = 16; // same prefix as the root node
	FUNC7(AF_INET, "192.255.0.0", key->data);
	FUNC1(FUNC3(map_fd, key) == -1 &&
		errno == ENOENT);

	/* assert initial lookup */
	key->prefixlen = 32;
	FUNC7(AF_INET, "192.168.0.1", key->data);
	FUNC1(FUNC4(map_fd, key, &value) == 0);
	FUNC1(value == 2);

	/* remove leaf node */
	key->prefixlen = 24;
	FUNC7(AF_INET, "192.168.0.0", key->data);
	FUNC1(FUNC3(map_fd, key) == 0);

	key->prefixlen = 32;
	FUNC7(AF_INET, "192.168.0.1", key->data);
	FUNC1(FUNC4(map_fd, key, &value) == 0);
	FUNC1(value == 1);

	/* remove leaf (and intermediary) node */
	key->prefixlen = 24;
	FUNC7(AF_INET, "192.168.1.0", key->data);
	FUNC1(FUNC3(map_fd, key) == 0);

	key->prefixlen = 32;
	FUNC7(AF_INET, "192.168.1.1", key->data);
	FUNC1(FUNC4(map_fd, key, &value) == 0);
	FUNC1(value == 1);

	/* remove root node */
	key->prefixlen = 16;
	FUNC7(AF_INET, "192.168.0.0", key->data);
	FUNC1(FUNC3(map_fd, key) == 0);

	key->prefixlen = 32;
	FUNC7(AF_INET, "192.168.128.1", key->data);
	FUNC1(FUNC4(map_fd, key, &value) == 0);
	FUNC1(value == 3);

	/* remove last node */
	key->prefixlen = 24;
	FUNC7(AF_INET, "192.168.128.0", key->data);
	FUNC1(FUNC3(map_fd, key) == 0);

	key->prefixlen = 32;
	FUNC7(AF_INET, "192.168.128.1", key->data);
	FUNC1(FUNC4(map_fd, key, &value) == -1 &&
		errno == ENOENT);

	FUNC6(map_fd);
}