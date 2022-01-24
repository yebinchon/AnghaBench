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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct file {int dummy; } ;
struct bpf_map {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* map_fd_put_ptr ) (void*) ;void* (* map_fd_get_ptr ) (struct bpf_map*,struct file*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct bpf_map*,void*,void**,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct bpf_map*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int FUNC5(struct bpf_map *map, struct file *map_file,
				void *key, void *value, u64 map_flags)
{
	void *ptr;
	int ret;
	u32 ufd = *(u32 *)value;

	ptr = map->ops->map_fd_get_ptr(map, map_file, ufd);
	if (FUNC0(ptr))
		return FUNC1(ptr);

	ret = FUNC2(map, key, &ptr, map_flags);
	if (ret)
		map->ops->map_fd_put_ptr(ptr);

	return ret;
}