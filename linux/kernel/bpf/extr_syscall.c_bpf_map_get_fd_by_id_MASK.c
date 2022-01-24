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
union bpf_attr {int open_flags; int /*<<< orphan*/  map_id; } ;
typedef  int /*<<< orphan*/  u32 ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_MAP_GET_FD_BY_ID ; 
 int BPF_OBJ_FLAG_MASK ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int EPERM ; 
 struct bpf_map* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bpf_map*) ; 
 int FUNC3 (struct bpf_map*) ; 
 struct bpf_map* FUNC4 (struct bpf_map*,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct bpf_map*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct bpf_map* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_idr ; 
 int /*<<< orphan*/  map_idr_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(const union bpf_attr *attr)
{
	struct bpf_map *map;
	u32 id = attr->map_id;
	int f_flags;
	int fd;

	if (FUNC0(BPF_MAP_GET_FD_BY_ID) ||
	    attr->open_flags & ~BPF_OBJ_FLAG_MASK)
		return -EINVAL;

	if (!FUNC8(CAP_SYS_ADMIN))
		return -EPERM;

	f_flags = FUNC5(attr->open_flags);
	if (f_flags < 0)
		return f_flags;

	FUNC10(&map_idr_lock);
	map = FUNC9(&map_idr, id);
	if (map)
		map = FUNC4(map, true);
	else
		map = FUNC1(-ENOENT);
	FUNC11(&map_idr_lock);

	if (FUNC2(map))
		return FUNC3(map);

	fd = FUNC6(map, f_flags);
	if (fd < 0)
		FUNC7(map);

	return fd;
}