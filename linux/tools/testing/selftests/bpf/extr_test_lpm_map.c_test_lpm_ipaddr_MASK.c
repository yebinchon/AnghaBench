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
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  BPF_F_NO_PREALLOC ; 
 int /*<<< orphan*/  BPF_MAP_TYPE_LPM_TRIE ; 
 scalar_t__ ENOENT ; 
 struct bpf_lpm_trie_key* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct bpf_lpm_trie_key*,int*) ; 
 scalar_t__ FUNC4 (int,struct bpf_lpm_trie_key*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct bpf_lpm_trie_key *key_ipv4;
	struct bpf_lpm_trie_key *key_ipv6;
	size_t key_size_ipv4;
	size_t key_size_ipv6;
	int map_fd_ipv4;
	int map_fd_ipv6;
	__u64 value;

	key_size_ipv4 = sizeof(*key_ipv4) + sizeof(__u32);
	key_size_ipv6 = sizeof(*key_ipv6) + sizeof(__u32) * 4;
	key_ipv4 = FUNC0(key_size_ipv4);
	key_ipv6 = FUNC0(key_size_ipv6);

	map_fd_ipv4 = FUNC2(BPF_MAP_TYPE_LPM_TRIE,
				     key_size_ipv4, sizeof(value),
				     100, BPF_F_NO_PREALLOC);
	FUNC1(map_fd_ipv4 >= 0);

	map_fd_ipv6 = FUNC2(BPF_MAP_TYPE_LPM_TRIE,
				     key_size_ipv6, sizeof(value),
				     100, BPF_F_NO_PREALLOC);
	FUNC1(map_fd_ipv6 >= 0);

	/* Fill data some IPv4 and IPv6 address ranges */
	value = 1;
	key_ipv4->prefixlen = 16;
	FUNC6(AF_INET, "192.168.0.0", key_ipv4->data);
	FUNC1(FUNC4(map_fd_ipv4, key_ipv4, &value, 0) == 0);

	value = 2;
	key_ipv4->prefixlen = 24;
	FUNC6(AF_INET, "192.168.0.0", key_ipv4->data);
	FUNC1(FUNC4(map_fd_ipv4, key_ipv4, &value, 0) == 0);

	value = 3;
	key_ipv4->prefixlen = 24;
	FUNC6(AF_INET, "192.168.128.0", key_ipv4->data);
	FUNC1(FUNC4(map_fd_ipv4, key_ipv4, &value, 0) == 0);

	value = 5;
	key_ipv4->prefixlen = 24;
	FUNC6(AF_INET, "192.168.1.0", key_ipv4->data);
	FUNC1(FUNC4(map_fd_ipv4, key_ipv4, &value, 0) == 0);

	value = 4;
	key_ipv4->prefixlen = 23;
	FUNC6(AF_INET, "192.168.0.0", key_ipv4->data);
	FUNC1(FUNC4(map_fd_ipv4, key_ipv4, &value, 0) == 0);

	value = 0xdeadbeef;
	key_ipv6->prefixlen = 64;
	FUNC6(AF_INET6, "2a00:1450:4001:814::200e", key_ipv6->data);
	FUNC1(FUNC4(map_fd_ipv6, key_ipv6, &value, 0) == 0);

	/* Set tprefixlen to maximum for lookups */
	key_ipv4->prefixlen = 32;
	key_ipv6->prefixlen = 128;

	/* Test some lookups that should come back with a value */
	FUNC6(AF_INET, "192.168.128.23", key_ipv4->data);
	FUNC1(FUNC3(map_fd_ipv4, key_ipv4, &value) == 0);
	FUNC1(value == 3);

	FUNC6(AF_INET, "192.168.0.1", key_ipv4->data);
	FUNC1(FUNC3(map_fd_ipv4, key_ipv4, &value) == 0);
	FUNC1(value == 2);

	FUNC6(AF_INET6, "2a00:1450:4001:814::", key_ipv6->data);
	FUNC1(FUNC3(map_fd_ipv6, key_ipv6, &value) == 0);
	FUNC1(value == 0xdeadbeef);

	FUNC6(AF_INET6, "2a00:1450:4001:814::1", key_ipv6->data);
	FUNC1(FUNC3(map_fd_ipv6, key_ipv6, &value) == 0);
	FUNC1(value == 0xdeadbeef);

	/* Test some lookups that should not match any entry */
	FUNC6(AF_INET, "10.0.0.1", key_ipv4->data);
	FUNC1(FUNC3(map_fd_ipv4, key_ipv4, &value) == -1 &&
	       errno == ENOENT);

	FUNC6(AF_INET, "11.11.11.11", key_ipv4->data);
	FUNC1(FUNC3(map_fd_ipv4, key_ipv4, &value) == -1 &&
	       errno == ENOENT);

	FUNC6(AF_INET6, "2a00:ffff::", key_ipv6->data);
	FUNC1(FUNC3(map_fd_ipv6, key_ipv6, &value) == -1 &&
	       errno == ENOENT);

	FUNC5(map_fd_ipv4);
	FUNC5(map_fd_ipv6);
}