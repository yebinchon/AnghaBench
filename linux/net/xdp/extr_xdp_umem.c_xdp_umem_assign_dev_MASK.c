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
typedef  int u16 ;
struct xdp_umem {int queue_id; int zc; int /*<<< orphan*/  flags; struct net_device* dev; } ;
struct TYPE_3__ {int queue_id; struct xdp_umem* umem; } ;
struct netdev_bpf {TYPE_1__ xsk; int /*<<< orphan*/  command; } ;
struct net_device {TYPE_2__* netdev_ops; } ;
struct TYPE_4__ {int (* ndo_bpf ) (struct net_device*,struct netdev_bpf*) ;int /*<<< orphan*/  ndo_xsk_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int XDP_COPY ; 
 int /*<<< orphan*/  XDP_SETUP_XSK_UMEM ; 
 int /*<<< orphan*/  XDP_UMEM_USES_NEED_WAKEUP ; 
 int XDP_USE_NEED_WAKEUP ; 
 int XDP_ZEROCOPY ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct netdev_bpf*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 scalar_t__ FUNC4 (struct net_device*,int) ; 
 int FUNC5 (struct net_device*,struct xdp_umem*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xdp_umem*) ; 

int FUNC7(struct xdp_umem *umem, struct net_device *dev,
			u16 queue_id, u16 flags)
{
	bool force_zc, force_copy;
	struct netdev_bpf bpf;
	int err = 0;

	FUNC0();

	force_zc = flags & XDP_ZEROCOPY;
	force_copy = flags & XDP_COPY;

	if (force_zc && force_copy)
		return -EINVAL;

	if (FUNC4(dev, queue_id))
		return -EBUSY;

	err = FUNC5(dev, umem, queue_id);
	if (err)
		return err;

	umem->dev = dev;
	umem->queue_id = queue_id;

	if (flags & XDP_USE_NEED_WAKEUP) {
		umem->flags |= XDP_UMEM_USES_NEED_WAKEUP;
		/* Tx needs to be explicitly woken up the first time.
		 * Also for supporting drivers that do not implement this
		 * feature. They will always have to call sendto().
		 */
		FUNC6(umem);
	}

	FUNC1(dev);

	if (force_copy)
		/* For copy-mode, we are done. */
		return 0;

	if (!dev->netdev_ops->ndo_bpf || !dev->netdev_ops->ndo_xsk_wakeup) {
		err = -EOPNOTSUPP;
		goto err_unreg_umem;
	}

	bpf.command = XDP_SETUP_XSK_UMEM;
	bpf.xsk.umem = umem;
	bpf.xsk.queue_id = queue_id;

	err = dev->netdev_ops->ndo_bpf(dev, &bpf);
	if (err)
		goto err_unreg_umem;

	umem->zc = true;
	return 0;

err_unreg_umem:
	if (!force_zc)
		err = 0; /* fallback to copy mode */
	if (err)
		FUNC3(dev, queue_id);
	return err;
}