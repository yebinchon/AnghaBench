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
typedef  scalar_t__ u32 ;
struct xdp_sock {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_redirect_info {int /*<<< orphan*/  map; int /*<<< orphan*/ * tgt_value; scalar_t__ tgt_index; } ;
struct bpf_prog {int dummy; } ;
struct bpf_map {scalar_t__ map_type; } ;
struct bpf_dtab_netdev {int dummy; } ;

/* Variables and functions */
 scalar_t__ BPF_MAP_TYPE_DEVMAP ; 
 scalar_t__ BPF_MAP_TYPE_DEVMAP_HASH ; 
 scalar_t__ BPF_MAP_TYPE_XSKMAP ; 
 int EBADRQC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct bpf_prog*,void*,struct bpf_map*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct bpf_prog*,void*,struct bpf_map*,scalar_t__,int) ; 
 int /*<<< orphan*/  bpf_redirect_info ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct bpf_dtab_netdev*,struct sk_buff*,struct bpf_prog*) ; 
 struct bpf_redirect_info* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct xdp_sock*,struct xdp_buff*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				       struct sk_buff *skb,
				       struct xdp_buff *xdp,
				       struct bpf_prog *xdp_prog,
				       struct bpf_map *map)
{
	struct bpf_redirect_info *ri = FUNC5(&bpf_redirect_info);
	u32 index = ri->tgt_index;
	void *fwd = ri->tgt_value;
	int err = 0;

	ri->tgt_index = 0;
	ri->tgt_value = NULL;
	FUNC0(ri->map, NULL);

	if (map->map_type == BPF_MAP_TYPE_DEVMAP ||
	    map->map_type == BPF_MAP_TYPE_DEVMAP_HASH) {
		struct bpf_dtab_netdev *dst = fwd;

		err = FUNC4(dst, skb, xdp_prog);
		if (FUNC6(err))
			goto err;
	} else if (map->map_type == BPF_MAP_TYPE_XSKMAP) {
		struct xdp_sock *xs = fwd;

		err = FUNC7(xs, xdp);
		if (err)
			goto err;
		FUNC3(skb);
	} else {
		/* TODO: Handle BPF_MAP_TYPE_CPUMAP */
		err = -EBADRQC;
		goto err;
	}

	FUNC1(dev, xdp_prog, fwd, map, index);
	return 0;
err:
	FUNC2(dev, xdp_prog, fwd, map, index, err);
	return err;
}