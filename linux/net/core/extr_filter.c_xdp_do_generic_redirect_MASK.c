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
struct xdp_buff {int dummy; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct bpf_redirect_info {scalar_t__ tgt_index; int /*<<< orphan*/  map; } ;
struct bpf_prog {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct bpf_map* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct bpf_prog*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct bpf_prog*,scalar_t__,int) ; 
 int /*<<< orphan*/  bpf_redirect_info ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct bpf_prog*) ; 
 struct bpf_redirect_info* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct net_device*,struct sk_buff*,struct xdp_buff*,struct bpf_prog*,struct bpf_map*) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 

int FUNC10(struct net_device *dev, struct sk_buff *skb,
			    struct xdp_buff *xdp, struct bpf_prog *xdp_prog)
{
	struct bpf_redirect_info *ri = FUNC6(&bpf_redirect_info);
	struct bpf_map *map = FUNC0(ri->map);
	u32 index = ri->tgt_index;
	struct net_device *fwd;
	int err = 0;

	if (map)
		return FUNC8(dev, skb, xdp, xdp_prog,
						   map);
	ri->tgt_index = 0;
	fwd = FUNC3(FUNC4(dev), index);
	if (FUNC7(!fwd)) {
		err = -EINVAL;
		goto err;
	}

	err = FUNC9(fwd, skb->len);
	if (FUNC7(err))
		goto err;

	skb->dev = fwd;
	FUNC1(dev, xdp_prog, index);
	FUNC5(skb, xdp_prog);
	return 0;
err:
	FUNC2(dev, xdp_prog, index, err);
	return err;
}