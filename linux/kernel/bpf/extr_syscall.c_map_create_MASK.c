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
union bpf_attr {scalar_t__ btf_value_type_id; scalar_t__ btf_key_type_id; int /*<<< orphan*/  btf_fd; int /*<<< orphan*/  map_name; int /*<<< orphan*/  map_flags; } ;
struct btf {int spin_lock_off; TYPE_1__* ops; int /*<<< orphan*/  memory; struct btf* btf; scalar_t__ btf_value_type_id; scalar_t__ btf_key_type_id; int /*<<< orphan*/  usercnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  name; } ;
struct bpf_map_memory {int dummy; } ;
struct bpf_map {int spin_lock_off; TYPE_1__* ops; int /*<<< orphan*/  memory; struct bpf_map* btf; scalar_t__ btf_value_type_id; scalar_t__ btf_key_type_id; int /*<<< orphan*/  usercnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* map_free ) (struct btf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_CREATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct btf*) ; 
 int NUMA_NO_NODE ; 
 int FUNC2 (struct btf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btf*) ; 
 int FUNC6 (union bpf_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_map_memory*) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_map_memory*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct btf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btf*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btf* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btf*) ; 
 struct btf* FUNC14 (union bpf_attr*) ; 
 int FUNC15 (struct btf*,struct btf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 unsigned int nr_node_ids ; 
 int FUNC17 (struct btf*) ; 
 int /*<<< orphan*/  FUNC18 (struct btf*) ; 
 int /*<<< orphan*/  FUNC19 (struct btf*) ; 

__attribute__((used)) static int FUNC20(union bpf_attr *attr)
{
	int numa_node = FUNC6(attr);
	struct bpf_map_memory mem;
	struct bpf_map *map;
	int f_flags;
	int err;

	err = FUNC0(BPF_MAP_CREATE);
	if (err)
		return -EINVAL;

	f_flags = FUNC4(attr->map_flags);
	if (f_flags < 0)
		return f_flags;

	if (numa_node != NUMA_NO_NODE &&
	    ((unsigned int)numa_node >= nr_node_ids ||
	     !FUNC16(numa_node)))
		return -EINVAL;

	/* find map type and init map: hashtable vs rbtree vs bloom vs ... */
	map = FUNC14(attr);
	if (FUNC1(map))
		return FUNC2(map);

	err = FUNC11(map->name, attr->map_name);
	if (err)
		goto free_map;

	FUNC3(&map->refcnt, 1);
	FUNC3(&map->usercnt, 1);

	if (attr->btf_key_type_id || attr->btf_value_type_id) {
		struct btf *btf;

		if (!attr->btf_value_type_id) {
			err = -EINVAL;
			goto free_map;
		}

		btf = FUNC12(attr->btf_fd);
		if (FUNC1(btf)) {
			err = FUNC2(btf);
			goto free_map;
		}

		err = FUNC15(map, btf, attr->btf_key_type_id,
				    attr->btf_value_type_id);
		if (err) {
			FUNC13(btf);
			goto free_map;
		}

		map->btf = btf;
		map->btf_key_type_id = attr->btf_key_type_id;
		map->btf_value_type_id = attr->btf_value_type_id;
	} else {
		map->spin_lock_off = -EINVAL;
	}

	err = FUNC17(map);
	if (err)
		goto free_map;

	err = FUNC5(map);
	if (err)
		goto free_map_sec;

	err = FUNC9(map, f_flags);
	if (err < 0) {
		/* failed to allocate fd.
		 * bpf_map_put_with_uref() is needed because the above
		 * bpf_map_alloc_id() has published the map
		 * to the userspace and the userspace may
		 * have refcnt-ed it through BPF_MAP_GET_FD_BY_ID.
		 */
		FUNC10(map);
		return err;
	}

	return err;

free_map_sec:
	FUNC18(map);
free_map:
	FUNC13(map->btf);
	FUNC8(&mem, &map->memory);
	map->ops->map_free(map);
	FUNC7(&mem);
	return err;
}