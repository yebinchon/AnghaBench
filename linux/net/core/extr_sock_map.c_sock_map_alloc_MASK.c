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
union bpf_attr {scalar_t__ max_entries; int key_size; int value_size; int map_flags; } ;
typedef  int u64 ;
struct sock {int dummy; } ;
struct bpf_map {int max_entries; int /*<<< orphan*/  memory; int /*<<< orphan*/  numa_node; } ;
struct bpf_stab {struct bpf_map map; scalar_t__ sks; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 struct bpf_map* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_USER ; 
 int SOCK_CREATE_FLAG_MASK ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_map*,union bpf_attr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_stab*) ; 
 struct bpf_stab* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bpf_map *FUNC9(union bpf_attr *attr)
{
	struct bpf_stab *stab;
	u64 cost;
	int err;

	if (!FUNC5(CAP_NET_ADMIN))
		return FUNC0(-EPERM);
	if (attr->max_entries == 0 ||
	    attr->key_size    != 4 ||
	    attr->value_size  != 4 ||
	    attr->map_flags & ~SOCK_CREATE_FLAG_MASK)
		return FUNC0(-EINVAL);

	stab = FUNC7(sizeof(*stab), GFP_USER);
	if (!stab)
		return FUNC0(-ENOMEM);

	FUNC4(&stab->map, attr);
	FUNC8(&stab->lock);

	/* Make sure page count doesn't overflow. */
	cost = (u64) stab->map.max_entries * sizeof(struct sock *);
	err = FUNC3(&stab->map.memory, cost);
	if (err)
		goto free_stab;

	stab->sks = FUNC1(stab->map.max_entries *
				       sizeof(struct sock *),
				       stab->map.numa_node);
	if (stab->sks)
		return &stab->map;
	err = -ENOMEM;
	FUNC2(&stab->map.memory);
free_stab:
	FUNC6(stab);
	return FUNC0(err);
}