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
struct xdp_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_redirect_info {int /*<<< orphan*/  map; } ;
struct bpf_prog {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 struct bpf_map* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_redirect_info ; 
 scalar_t__ FUNC1 (struct bpf_map*) ; 
 struct bpf_redirect_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net_device*,struct xdp_buff*,struct bpf_prog*,struct bpf_map*,struct bpf_redirect_info*) ; 
 int FUNC4 (struct net_device*,struct xdp_buff*,struct bpf_prog*,struct bpf_redirect_info*) ; 

int FUNC5(struct net_device *dev, struct xdp_buff *xdp,
		    struct bpf_prog *xdp_prog)
{
	struct bpf_redirect_info *ri = FUNC2(&bpf_redirect_info);
	struct bpf_map *map = FUNC0(ri->map);

	if (FUNC1(map))
		return FUNC3(dev, xdp, xdp_prog, map, ri);

	return FUNC4(dev, xdp, xdp_prog, ri);
}