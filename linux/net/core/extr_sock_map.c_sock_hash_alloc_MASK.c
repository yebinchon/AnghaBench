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
union bpf_attr {scalar_t__ max_entries; scalar_t__ key_size; int value_size; int map_flags; } ;
typedef  int u64 ;
struct bpf_map {int max_entries; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  key_size; } ;
struct bpf_htab_elem {int dummy; } ;
struct bpf_htab_bucket {int dummy; } ;
struct bpf_htab {int buckets_num; struct bpf_map map; TYPE_1__* buckets; scalar_t__ elem_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 struct bpf_map* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_USER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_BPF_STACK ; 
 int PAGE_SIZE ; 
 int SOCK_CREATE_FLAG_MASK ; 
 int U32_MAX ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map*,union bpf_attr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_htab*) ; 
 struct bpf_htab* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static struct bpf_map *FUNC10(union bpf_attr *attr)
{
	struct bpf_htab *htab;
	int i, err;
	u64 cost;

	if (!FUNC4(CAP_NET_ADMIN))
		return FUNC0(-EPERM);
	if (attr->max_entries == 0 ||
	    attr->key_size    == 0 ||
	    attr->value_size  != 4 ||
	    attr->map_flags & ~SOCK_CREATE_FLAG_MASK)
		return FUNC0(-EINVAL);
	if (attr->key_size > MAX_BPF_STACK)
		return FUNC0(-E2BIG);

	htab = FUNC6(sizeof(*htab), GFP_USER);
	if (!htab)
		return FUNC0(-ENOMEM);

	FUNC3(&htab->map, attr);

	htab->buckets_num = FUNC9(htab->map.max_entries);
	htab->elem_size = sizeof(struct bpf_htab_elem) +
			  FUNC8(htab->map.key_size, 8);
	if (htab->buckets_num == 0 ||
	    htab->buckets_num > U32_MAX / sizeof(struct bpf_htab_bucket)) {
		err = -EINVAL;
		goto free_htab;
	}

	cost = (u64) htab->buckets_num * sizeof(struct bpf_htab_bucket) +
	       (u64) htab->elem_size * htab->map.max_entries;
	if (cost >= U32_MAX - PAGE_SIZE) {
		err = -EINVAL;
		goto free_htab;
	}

	htab->buckets = FUNC2(htab->buckets_num *
					   sizeof(struct bpf_htab_bucket),
					   htab->map.numa_node);
	if (!htab->buckets) {
		err = -ENOMEM;
		goto free_htab;
	}

	for (i = 0; i < htab->buckets_num; i++) {
		FUNC1(&htab->buckets[i].head);
		FUNC7(&htab->buckets[i].lock);
	}

	return &htab->map;
free_htab:
	FUNC5(htab);
	return FUNC0(err);
}