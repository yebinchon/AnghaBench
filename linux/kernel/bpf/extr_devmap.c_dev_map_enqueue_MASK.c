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
struct xdp_frame {int dummy; } ;
struct xdp_buff {scalar_t__ data; scalar_t__ data_end; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct bpf_dtab_netdev {struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ndo_xdp_xmit; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EOVERFLOW ; 
 int FUNC0 (struct bpf_dtab_netdev*,struct xdp_frame*,struct net_device*) ; 
 struct xdp_frame* FUNC1 (struct xdp_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct net_device*,scalar_t__) ; 

int FUNC4(struct bpf_dtab_netdev *dst, struct xdp_buff *xdp,
		    struct net_device *dev_rx)
{
	struct net_device *dev = dst->dev;
	struct xdp_frame *xdpf;
	int err;

	if (!dev->netdev_ops->ndo_xdp_xmit)
		return -EOPNOTSUPP;

	err = FUNC3(dev, xdp->data_end - xdp->data);
	if (FUNC2(err))
		return err;

	xdpf = FUNC1(xdp);
	if (FUNC2(!xdpf))
		return -EOVERFLOW;

	return FUNC0(dst, xdpf, dev_rx);
}