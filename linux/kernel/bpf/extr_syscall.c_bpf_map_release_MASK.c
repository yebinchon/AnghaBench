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
struct inode {int dummy; } ;
struct file {struct bpf_map* private_data; } ;
struct bpf_map {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* map_release ) (struct bpf_map*,struct file*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_map*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	struct bpf_map *map = filp->private_data;

	if (map->ops->map_release)
		map->ops->map_release(map, filp);

	FUNC0(map);
	return 0;
}