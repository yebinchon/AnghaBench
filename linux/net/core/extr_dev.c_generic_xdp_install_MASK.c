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
struct netdev_bpf {int command; int /*<<< orphan*/  prog_id; struct bpf_prog* prog; } ;
struct net_device {int /*<<< orphan*/  xdp_prog; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  XDP_QUERY_PROG 129 
#define  XDP_SETUP_PROG 128 
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  generic_xdp_needed_key ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bpf_prog*) ; 
 struct bpf_prog* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct netdev_bpf *xdp)
{
	struct bpf_prog *old = FUNC4(dev->xdp_prog);
	struct bpf_prog *new = xdp->prog;
	int ret = 0;

	switch (xdp->command) {
	case XDP_SETUP_PROG:
		FUNC3(dev->xdp_prog, new);
		if (old)
			FUNC0(old);

		if (old && !new) {
			FUNC5(&generic_xdp_needed_key);
		} else if (new && !old) {
			FUNC6(&generic_xdp_needed_key);
			FUNC2(dev);
			FUNC1(dev);
		}
		break;

	case XDP_QUERY_PROG:
		xdp->prog_id = old ? old->aux->id : 0;
		break;

	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}