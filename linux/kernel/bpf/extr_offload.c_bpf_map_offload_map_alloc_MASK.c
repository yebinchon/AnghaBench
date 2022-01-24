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
union bpf_attr {scalar_t__ map_type; int /*<<< orphan*/  map_ifindex; } ;
struct net {int dummy; } ;
struct bpf_map {int dummy; } ;
struct bpf_offloaded_map {struct bpf_map map; int /*<<< orphan*/  offloads; int /*<<< orphan*/  netdev; } ;
struct bpf_offload_netdev {int /*<<< orphan*/  maps; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {struct net* net_ns; } ;

/* Variables and functions */
 scalar_t__ BPF_MAP_TYPE_ARRAY ; 
 scalar_t__ BPF_MAP_TYPE_HASH ; 
 int /*<<< orphan*/  BPF_OFFLOAD_MAP_ALLOC ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 struct bpf_map* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_USER ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map*,union bpf_attr*) ; 
 int FUNC4 (struct bpf_offloaded_map*,int /*<<< orphan*/ ) ; 
 struct bpf_offload_netdev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_offloaded_map*) ; 
 struct bpf_offloaded_map* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

struct bpf_map *FUNC14(union bpf_attr *attr)
{
	struct net *net = current->nsproxy->net_ns;
	struct bpf_offload_netdev *ondev;
	struct bpf_offloaded_map *offmap;
	int err;

	if (!FUNC6(CAP_SYS_ADMIN))
		return FUNC0(-EPERM);
	if (attr->map_type != BPF_MAP_TYPE_ARRAY &&
	    attr->map_type != BPF_MAP_TYPE_HASH)
		return FUNC0(-EINVAL);

	offmap = FUNC9(sizeof(*offmap), GFP_USER);
	if (!offmap)
		return FUNC0(-ENOMEM);

	FUNC3(&offmap->map, attr);

	FUNC11();
	FUNC7(&bpf_devs_lock);
	offmap->netdev = FUNC1(net, attr->map_ifindex);
	err = FUNC2(offmap->netdev);
	if (err)
		goto err_unlock;

	ondev = FUNC5(offmap->netdev);
	if (!ondev) {
		err = -EINVAL;
		goto err_unlock;
	}

	err = FUNC4(offmap, BPF_OFFLOAD_MAP_ALLOC);
	if (err)
		goto err_unlock;

	FUNC10(&offmap->offloads, &ondev->maps);
	FUNC13(&bpf_devs_lock);
	FUNC12();

	return &offmap->map;

err_unlock:
	FUNC13(&bpf_devs_lock);
	FUNC12();
	FUNC8(offmap);
	return FUNC0(err);
}