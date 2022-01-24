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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct bpf_htab_elem {int /*<<< orphan*/  hash; struct sock* sk; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {scalar_t__ max_entries; int /*<<< orphan*/  numa_node; } ;
struct bpf_htab {int /*<<< orphan*/  count; TYPE_1__ map; int /*<<< orphan*/  elem_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct bpf_htab_elem* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_ATOMIC ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct bpf_htab_elem* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bpf_htab_elem *FUNC5(struct bpf_htab *htab,
						  void *key, u32 key_size,
						  u32 hash, struct sock *sk,
						  struct bpf_htab_elem *old)
{
	struct bpf_htab_elem *new;

	if (FUNC2(&htab->count) > htab->map.max_entries) {
		if (!old) {
			FUNC1(&htab->count);
			return FUNC0(-E2BIG);
		}
	}

	new = FUNC3(htab->elem_size, GFP_ATOMIC | __GFP_NOWARN,
			   htab->map.numa_node);
	if (!new) {
		FUNC1(&htab->count);
		return FUNC0(-ENOMEM);
	}
	FUNC4(new->key, key, key_size);
	new->sk = sk;
	new->hash = hash;
	return new;
}