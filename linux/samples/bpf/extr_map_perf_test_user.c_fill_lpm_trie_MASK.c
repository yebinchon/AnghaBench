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
struct bpf_lpm_trie_key {int prefixlen; int* data; } ;

/* Variables and functions */
 struct bpf_lpm_trie_key* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct bpf_lpm_trie_key*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * map_fd ; 
 int FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	struct bpf_lpm_trie_key *key;
	unsigned long value = 0;
	unsigned int i;
	int r;

	key = FUNC0(sizeof(*key) + 4);
	key->prefixlen = 32;

	for (i = 0; i < 512; ++i) {
		key->prefixlen = FUNC3() % 33;
		key->data[0] = FUNC3() & 0xff;
		key->data[1] = FUNC3() & 0xff;
		key->data[2] = FUNC3() & 0xff;
		key->data[3] = FUNC3() & 0xff;
		r = FUNC2(map_fd[6], key, &value, 0);
		FUNC1(!r);
	}

	key->prefixlen = 32;
	key->data[0] = 192;
	key->data[1] = 168;
	key->data[2] = 0;
	key->data[3] = 1;
	value = 128;

	r = FUNC2(map_fd[6], key, &value, 0);
	FUNC1(!r);
}