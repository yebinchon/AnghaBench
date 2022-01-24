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
union bpf_attr {int map_type; int key_size; int value_size; int inner_map_fd; int max_entries; int numa_node; int /*<<< orphan*/  map_flags; int /*<<< orphan*/  map_name; } ;
typedef  enum bpf_map_type { ____Placeholder_bpf_map_type } bpf_map_type ;
typedef  int /*<<< orphan*/  attr ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_F_NUMA_NODE ; 
 int /*<<< orphan*/  BPF_MAP_CREATE ; 
 scalar_t__ BPF_OBJ_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union bpf_attr*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,union bpf_attr*,int) ; 

int FUNC5(enum bpf_map_type map_type, const char *name,
			       int key_size, int inner_map_fd, int max_entries,
			       __u32 map_flags, int node)
{
	union bpf_attr attr;

	FUNC1(&attr, '\0', sizeof(attr));

	attr.map_type = map_type;
	attr.key_size = key_size;
	attr.value_size = 4;
	attr.inner_map_fd = inner_map_fd;
	attr.max_entries = max_entries;
	attr.map_flags = map_flags;
	if (name)
		FUNC0(attr.map_name, name,
		       FUNC2(FUNC3(name), BPF_OBJ_NAME_LEN - 1));

	if (node >= 0) {
		attr.map_flags |= BPF_F_NUMA_NODE;
		attr.numa_node = node;
	}

	return FUNC4(BPF_MAP_CREATE, &attr, sizeof(attr));
}