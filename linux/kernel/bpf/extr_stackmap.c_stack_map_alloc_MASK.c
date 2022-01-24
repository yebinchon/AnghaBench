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
union bpf_attr {int value_size; int map_flags; scalar_t__ max_entries; int key_size; } ;
typedef  int u64 ;
typedef  int u32 ;
struct stack_map_bucket {int dummy; } ;
struct bpf_map {int value_size; int /*<<< orphan*/  memory; } ;
struct bpf_stack_map {int n_buckets; struct bpf_map map; } ;
struct bpf_stack_build_id {int dummy; } ;
struct bpf_map_memory {int dummy; } ;

/* Variables and functions */
 int BPF_F_STACK_BUILD_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 struct bpf_map* FUNC1 (int) ; 
 int STACK_CREATE_FLAG_MASK ; 
 struct bpf_stack_map* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_stack_map*) ; 
 int /*<<< orphan*/  FUNC4 (union bpf_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_map_memory*) ; 
 int FUNC6 (struct bpf_map_memory*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct bpf_map_memory*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_map*,union bpf_attr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct bpf_stack_map*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (scalar_t__) ; 
 int sysctl_perf_event_max_stack ; 

__attribute__((used)) static struct bpf_map *FUNC14(union bpf_attr *attr)
{
	u32 value_size = attr->value_size;
	struct bpf_stack_map *smap;
	struct bpf_map_memory mem;
	u64 cost, n_buckets;
	int err;

	if (!FUNC9(CAP_SYS_ADMIN))
		return FUNC1(-EPERM);

	if (attr->map_flags & ~STACK_CREATE_FLAG_MASK)
		return FUNC1(-EINVAL);

	/* check sanity of attributes */
	if (attr->max_entries == 0 || attr->key_size != 4 ||
	    value_size < 8 || value_size % 8)
		return FUNC1(-EINVAL);

	FUNC0(sizeof(struct bpf_stack_build_id) % sizeof(u64));
	if (attr->map_flags & BPF_F_STACK_BUILD_ID) {
		if (value_size % sizeof(struct bpf_stack_build_id) ||
		    value_size / sizeof(struct bpf_stack_build_id)
		    > sysctl_perf_event_max_stack)
			return FUNC1(-EINVAL);
	} else if (value_size / 8 > sysctl_perf_event_max_stack)
		return FUNC1(-EINVAL);

	/* hash table size must be power of 2 */
	n_buckets = FUNC13(attr->max_entries);

	cost = n_buckets * sizeof(struct stack_map_bucket *) + sizeof(*smap);
	cost += n_buckets * (value_size + sizeof(struct stack_map_bucket));
	err = FUNC6(&mem, cost);
	if (err)
		return FUNC1(err);

	smap = FUNC2(cost, FUNC4(attr));
	if (!smap) {
		FUNC5(&mem);
		return FUNC1(-ENOMEM);
	}

	FUNC8(&smap->map, attr);
	smap->map.value_size = value_size;
	smap->n_buckets = n_buckets;

	err = FUNC10(sysctl_perf_event_max_stack);
	if (err)
		goto free_charge;

	err = FUNC11(smap);
	if (err)
		goto put_buffers;

	FUNC7(&smap->map.memory, &mem);

	return &smap->map;

put_buffers:
	FUNC12();
free_charge:
	FUNC5(&mem);
	FUNC3(smap);
	return FUNC1(err);
}