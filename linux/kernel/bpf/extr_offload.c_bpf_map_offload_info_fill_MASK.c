#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_1__* dentry; } ;
struct ns_get_path_bpf_map_args {struct bpf_map_info* info; int /*<<< orphan*/  offmap; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_2__* i_sb; } ;
struct bpf_map_info {int /*<<< orphan*/  netns_ino; int /*<<< orphan*/  netns_dev; int /*<<< orphan*/  ifindex; } ;
struct bpf_map {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_dev; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  bpf_map_offload_info_fill_ns ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct path*,int /*<<< orphan*/ ,struct ns_get_path_bpf_map_args*) ; 
 int /*<<< orphan*/  FUNC5 (struct path*) ; 

int FUNC6(struct bpf_map_info *info, struct bpf_map *map)
{
	struct ns_get_path_bpf_map_args args = {
		.offmap	= FUNC2(map),
		.info	= info,
	};
	struct inode *ns_inode;
	struct path ns_path;
	void *res;

	res = FUNC4(&ns_path, bpf_map_offload_info_fill_ns, &args);
	if (FUNC0(res)) {
		if (!info->ifindex)
			return -ENODEV;
		return FUNC1(res);
	}

	ns_inode = ns_path.dentry->d_inode;
	info->netns_dev = FUNC3(ns_inode->i_sb->s_dev);
	info->netns_ino = ns_inode->i_ino;
	FUNC5(&ns_path);

	return 0;
}